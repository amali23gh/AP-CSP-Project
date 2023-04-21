//
//  AnimalDecisionProbability.swift
//  FinalProject
//
//  Created by Adam Ali23 on 4/2/23.
//

import Foundation


func animalChance() {
    
    
    var animalProb:[[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: 5)
    
    for index in 0...animalProb.count - 1 {
        animalProb[index][0] = Int.random(in: 0 ... 100)
        animalProb[index][1] = 100 - animalProb[index][0]
    }
    
    Prob.meerkatProb = animalProb[0]
    Prob.zebraProb = animalProb[1]
    Prob.lionProb = animalProb[2]
    Prob.hyenaProb = animalProb[3]
    Prob.vultureProb = animalProb[4]
    

}
