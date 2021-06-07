push!(LOAD_PATH,"../src/")
using DrWatson
using Test
@quickactivate "JN500"
include("../src/shapes.jl")
include("test_shapes.jl")
