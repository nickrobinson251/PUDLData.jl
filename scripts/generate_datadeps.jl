using DataDepsGenerators

const RAW_DATASET_TO_DOI = Dict(
    # {{DATASET}} => https://doi.org/{{DOI}}
    "censusdp1tract" => "10.5281/zenodo.4127049",
    "eia860"  => "10.5281/zenodo.4127027",
    "eia860m" => "10.5281/zenodo.4281337",
    "eia861"  => "10.5281/zenodo.4127029",
    "eia923"  => "10.5281/zenodo.4127040",
    "epacems" => "10.5281/zenodo.4127055",
    "ferc1"   => "10.5281/zenodo.4127044",
    "ferc714" => "10.5281/zenodo.4127101",
)

# TODO: Generate this automatically via Zenodo API?
const RELEASE_VERSION_TO_DOI = Dict(
    v"1.0.0" => "10.5281/zenodo.3653159",
    v"1.1.0" => "10.5281/zenodo.3672068",
)

const LATEST_VERSION = maximum(keys(RELEASE_VERSION_TO_DOI))

const DIR = joinpath(@__DIR__, "datadeps_generated")

function generate_datadeps(dir=DIR)
    ispath(dir) || mkpath(dir)

    for (dataset, doi) in RAW_DATASET_TO_DOI
        filepath = joinpath(dir, "raw_$dataset.jl")
        datadep_str = generate(JSONLD_Web(), "https://doi.org/$doi", "pudl-raw-$dataset")
        open(filepath, "w") do file
            write(file, datadep_str)
        end
    end

    for (version, doi) in RELEASE_VERSION_TO_DOI
        v_str = replace(string(version), '.' => '_')
        filepath = joinpath(dir, "release_v$v_str.jl")
        datadep_str = generate(JSONLD_Web(), "https://doi.org/$doi", "pudl-release-v$version")
        open(filepath, "w") do file
            write(file, datadep_str)
        end

        if version === LATEST_VERSION
            filepath = joinpath(dir, "release_latest.jl")
            open(filepath, "w") do file
                write(file, datadep_str)
            end
        end
    end
    try
        @eval using JuliaFormatter
        format(dir, BlueStyle())
    catch
    end
end
