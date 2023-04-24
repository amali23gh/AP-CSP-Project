//
//  boxColorLog.swift
//  FinalProject
//
//  Created by Theo Fechtmeyer23 on 4/24/23.
//

import Foundation
func boxColor() -> [Bool]{
    var boxColors: [Bool] = Array(repeating: false, count: 5)
    if Prob.animalPick[0] != 0 && Prob.animalPick[1] != 0{
        boxColors[Prob.animalPick[0]-1] = true
        boxColors[Prob.animalPick[1]-1] = true
    }
    return boxColors
}
