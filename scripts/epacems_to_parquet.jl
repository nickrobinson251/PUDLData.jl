using Arrow
using CSV
using CodecZlib
using DataDeps
using DataFrames
using Mmap
using PUDLData
using Parquet

function epacems_file(year, state)
    return joinpath(
        datadep"pudl-eia860-eia923-epacems-v1.1.0",
        "datapkg", "pudl-data-release", "pudl-eia860-eia923-epacems", "data",
        "hourly_emissions_epacems_$(year)_$(lowercase(state))"
    )
end

"Read gzip file to `Vector{UInt8}`"
ungzip(filepath) = transcode(GzipDecompressor, Mmap.mmap(filepath))

"""
    epacems_to_parquet(years, state; compress=:zstd)

Convert EPA-CEMS `.csv.gz` files for the given `years` and `states` to `.parquet` files.

# Arguments
- `years`: four-digit integers, e.g. `2017` or `2017:2019`.
- `states` two-letter abbreviations, e.g. `"AL"` or `["AL", "AZ"]`

# Keywords
- `compress=:zstd`: Compression codec; :uncompressed, :snappy, :gzip, or :zstd.
"""
function epacems_to_parquet(year::Int, state::String; compress=:gzip)
    @info "Converting to Parquet" year state
    filename = epacems_file(year, state)

    # read it into `DataFrame`, not `CSV.File`, to avoid unsupported `PooledString` type
	df = CSV.read(ungzip("$filename.csv.gz"), DataFrame)

    # Columns with all `missing` values not supported
    # https://github.com/JuliaIO/Parquet.jl/issues/129
    for col in eachcol(df)
        if all(ismissing, col)
            @warn "Cannot write $year $state to parquet due to all `missings` in $col"
            return nothing
        end
    end

    SupportedType = Union{Missing, Int32, Int64, String, Bool, Float32, Float64}
    @assert all(col -> eltype(col) <: SupportedType, eachcol(df))

    write_parquet("$filename.parquet", df; compression_codec=uppercase(string(compress)))
end

"""
    epacems_to_arrow(years, state; compress=:zstd, keywords...)

Convert EPA-CEMS `.csv.gz` files for the given `years` and `states` to `.arrow` files.

# Arguments
- `years`: four-digit integers, e.g. `2017` or `2017:2019`.
- `states` two-letter abbreviations, e.g. `"AL"` or `["AL", "AZ"]`

# Keywords
- `compress=:zstd`: Compression codec; `nothing`, `:lz4`, or `:zstd`.
- Other keywords are passed to `Arrow.write`; see `Arrow.write` for supported keywords.
"""
function epacems_to_arrow(year::Int, state::String; compress=:zstd, kwargs...)
    @info "Converting to Arrow" year state
    filename = epacems_file(year, state)
    csv_file = CSV.File(ungzip("$filename.csv.gz"))
    Arrow.write("$filename.arrow", csv_file; compress=compress, kwargs...)
end

for func in (:epacems_to_parquet, :epacems_to_arrow)
    @eval begin
        function $func(year::Int, states; kwargs...)
            for state in states
                $func(year, state; kwargs...)
            end
        end
        function $func(years, state::String; kwargs...)
            for year in years
                $func(year, state; kwargs...)
            end
        end
        function $func(years, states; kwargs...)
            for year in years, state in states
                $func(year, state; kwargs...)
            end
        end
    end
end
