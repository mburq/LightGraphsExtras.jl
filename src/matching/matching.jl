__precompile__(true)
module Matching
using LightGraphs
export MatchingResult, maximum_weight_maximal_matching, minimum_weight_perfect_matching

"""
    type MatchingResult{T}
        weight::T
        mate::Vector{Int}
    end

A type representing the result of a matching algorithm.

    weight: total weight of the matching

    mate:    `mate[i] = j` if vertex `i` is matched to vertex `j`.
             `mate[i] = -1` for unmatched vertices.
"""
type MatchingResult{T<:Real}
    weight::T
    mate::Vector{Int}
end

import BlossomV
include("blossomv.jl")

using JuMP
include("lp.jl")

end #module
