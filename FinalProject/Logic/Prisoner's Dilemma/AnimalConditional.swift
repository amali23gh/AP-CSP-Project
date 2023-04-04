//
//  AnimalChoice.swift
//  FinalProject
//
//  Created by Adam Ali23 on 4/2/23.
//

import Foundation



func animalChoice (selectedAnimalOne: [Int], selectedAnimalTwo: [Int], optionOne: String, optionTwo: String) -> String {
    
    let number = Int.random(in: 0 ... 100)
    let numberTwo = 100 - number
    
    if selectedAnimalOne[0] <= number {
        return "This animal will do Option 1"
    } else if selectedAnimalOne[1] <= numberTwo {
        return "This animal will do \(optionOne)"
    }
    
    
    if selectedAnimalTwo[0] <= number {
        return "This animal will do Option 1"
    } else if selectedAnimalTwo[1] <= numberTwo {
        return "This animal will do \(optionTwo)"
    }
    
    return "Error: The Conditional Didn't Work"
    
}
