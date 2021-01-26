using PUDLData
using Documenter

makedocs(;
    modules=[PUDLData],
    repo="https://github.com/nickrobinson251/PUDLData.jl/blob/{commit}{path}#{line}",
    sitename="PUDLData.jl",
    format=Documenter.HTML(; prettyurls=false),
    pages=[
        "Home" => "index.md",
    ],
    strict=true,
    checkdocs=:exports,
)

deploydocs(;
    repo="github.com/nickrobinson251/PUDLData.jl",
)
