using PUDLData
using Test

@testset "PUDLData.jl" begin
    @test all(startswith("pudl"), pudl_datasets())
end
