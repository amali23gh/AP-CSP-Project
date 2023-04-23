//
//  AnimalDecisionProbability.swift
//  FinalProject
//
//  Created by Adam Ali23 on 4/2/23.
//

import Foundation
import SwiftUI

func animalChance() -> some View {
    
    
    var animalProb:[Int] = Array(repeating: 0, count: 5)
    
    for index in 0...animalProb.count - 1 {
        animalProb[index] = Int.random(in: 0 ... 100)
    }
    
    Prob.animalProb[0] = animalProb[0]
    Prob.animalProb[1] = animalProb[1]
    Prob.animalProb[2] = animalProb[2]
    Prob.animalProb[3] = animalProb[3]
    Prob.animalProb[4] = animalProb[4]
    

    return EmptyView()
    
}

