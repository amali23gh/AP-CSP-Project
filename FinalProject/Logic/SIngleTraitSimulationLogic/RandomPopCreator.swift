

import Foundation

// Logic File Name: RandomPopCreator (for SingleTraitSimulation)

func RandomPopCreator(size:Int) -> [[Int]]{
    // learing how to creating 2D array https://stackoverflow.com/questions/25127700/two-dimensional-array-in-swift
    var popGeneA:[[Int]] = Array(repeating: Array(repeating: 0, count: 3), count: size)
    // how to make a list of random numbers https://www.reddit.com/r/swift/comments/a370pz/how_do_i_make_an_array_of_1000_random_numbers/
    for index in 0 ... popGeneA.count-1{
        popGeneA[index][0] = Int.random(in: 0 ... 1)
        popGeneA[index][1] = Int.random(in: 0 ... 1)
        popGeneA[index][2] = Int.random(in: 0 ... 1)
    }
    return popGeneA
}

// creates a populatiosn of specified size with random allies
// out side array is for indivuduals
// In side array specifies information about individual first element is sex 0 male 1 female, the second element is first allele 0 recesive 1 dominant, thrid element is second allele 0 recesive 1 dominant.
