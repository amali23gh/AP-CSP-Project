//
//  AnimalChoice.swift
//  FinalProject
//
//  Created by Adam Ali23 on 4/2/23.
//

import Foundation
import SwiftUI


func animalChoice() -> some View{
    
    let number = Int.random(in: 0 ... 100)
    
    for i in 0...Prob.animalPick.count - 1 {
        if number <= Prob.animalProb[Prob.animalPick[i]-1]{
            Prob.animalShare[i] = 1
        }
    }
    
    for i in 0...1 {
        
        if Prob.animalShare[i] == Prob.animalShare[i+1] {
            if Prob.animalShare[i] == 1 && Prob.animalShare[i+1] == 1 {
                Prob.result = "Both Animals Share!"
                    return Text(Prob.result)
            } else {
                Prob.result = "Since Both Animals Wanted to Steal, They Both get Nothing!"
                return Text(Prob.result)
            }
            } else if Prob.animalShare[i] != Prob.animalShare[i+1] {
                if Prob.animalShare[i] == 1 {
                    Prob.result = "Oh No! The Food was Taken by \(Prob.animalList[Prob.animalPick[1]-1])"
                    return  Text(Prob.result)
                } else {
                    Prob.result = "Oh No! The Food was Taken by \(Prob.animalList[Prob.animalPick[0]-1])"
                    return Text(Prob.result)
                }
            }
            
        }
        return Text("Error")
    }
    

