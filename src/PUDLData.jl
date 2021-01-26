module PUDLData

using DataDeps

export pudl_datasets

# `consts` providing info for `datadeps/release*.jl`
include("v1_0_0.jl")
include("v1_1_0.jl")
include("version_info.jl")
include("datadep_helpers.jl")

function __init__()
    datadep_dir = joinpath(@__DIR__, "datadeps")
    for filename in readdir(datadep_dir)
        include(joinpath(datadep_dir, filename))
    end
end

end  # module
