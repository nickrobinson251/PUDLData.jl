# PUDLData.jl

[![Code Style: Blue](https://img.shields.io/badge/code%20style-blue-4495d1.svg)](https://github.com/invenia/BlueStyle)
[![ColPrac: Contributor's Guide on Collaborative Practices for Community Packages](https://img.shields.io/badge/ColPrac-Contributor's%20Guide-blueviolet)](https://github.com/SciML/ColPrac)

Download [PUDL](https://github.com/catalyst-cooperative/pudl/) data archived on [Zenodo](https://zenodo.org/communities/catalyst-cooperative) using [DataDeps.jl](https://github.com/oxinabox/DataDeps.jl/).

NOTE: This package has no official connection to the [PUDL
project](https://catalyst.coop/pudl/).

Also this is a prototype package, I made it as part of playing around with the PUDL datasets, and it is not registered in the [General] Julia Package registry.

You can install the package with the Julia package manager Pkg.jl in the REPL like:

```julia
# press `]` to enable the Pkg REPL mode
pkg> add https://github.com/nickrobinson251/PUDLData.jl
```

To see available datasets:

```julia
julia> using PUDLData

julia> pudl_datasets()
16-element Array{String,1}:
 "pudl-eia860-eia923-epacems-v1.0.0"
 "pudl-eia860-eia923-epacems-v1.1.0"
 "pudl-eia860-eia923-v1.0.0"
 "pudl-eia860-eia923-v1.1.0"
 "pudl-ferc1-v1.0.0"
 "pudl-ferc1-v1.1.0"
 "pudl-raw-censusdp1tract"
 "pudl-raw-eia860"
 "pudl-raw-eia860m"
 "pudl-raw-eia861"
 "pudl-raw-eia923"
 "pudl-raw-epacems"
 "pudl-raw-ferc1"
 "pudl-raw-ferc714"
 "pudl-release-v1.0.0"
 "pudl-release-v1.1.0"
```

To download a dataset:
```julia
julia> using PUDLData, DataDeps

julia> datadep"pudl-eia860-eia923-v1.1.0"
```

You can treat `datadep"pudl-eia860-eia923-v1.1.0"` as a filepath pointing to the location of the data on your local machine.
On first usage, when the data is not yet on your machine, this will show a description of the dataset and ask you whether or not you would like to download the dataset.
On future usages, when the data is already on your system, the `datadep` will simply refer to the data on your system, without re-downloading it, e.g.
```julia
julia> datadep"pudl-eia860-eia923-v1.1.0"
"/Users/nick/.julia/datadeps/pudl-eia860-eia923-v1.1.0"
```

See [DataDeps.jl documentation](https://www.oxinabox.net/DataDeps.jl/stable/z10-for-end-users/) for more information on accessing and using data dependencies with DataDeps.jl.

This package was created with [DataDepsGenerators.jl](https://github.com/oxinabox/DataDepsGenerators.jl); running `scripts/generate_datadeps.jl` and then manually cleaning up the files this generated.
