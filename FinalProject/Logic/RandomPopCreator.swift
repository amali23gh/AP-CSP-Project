//
//  RandomPopCreator.swift
//  FinalProject
//
//  Created by Theo Fechtmeyer23 on 3/10/23.
//

import Foundation
func RandomPopCreator(size:Int) -> [[Int]]{
    // learing how to creating 2D array https://stackoverflow.com/questions/25127700/two-dimensional-array-in-swift
    var popGeneA:[[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: size)
    // how to make a list of random numbers https://www.reddit.com/r/swift/comments/a370pz/how_do_i_make_an_array_of_1000_random_numbers/
    for index in 0 ... popGeneA.count-1{
        popGeneA[index][0] = Int.random(in: 0 ... 1)
        popGeneA[index][1] = Int.random(in: 0 ... 1)
    }
    return popGeneA
}
