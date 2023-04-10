//
//  AnimalBoxColor.swift
//  FinalProject
//
//  Created by Adam Ali23 on 4/2/23.
//

import Foundation
import SwiftUI


func  AnimalBoxColor(color: Bool) -> Color {
    
    if color == true {
        return .yellow
    } else {
        return .gray
        
    }
} 


func AnimalPage(animalOne: Bool, animalTwo: Bool, animalThree: Bool, animalFour: Bool, animalFive: Bool) -> some View  {
    
    if  animalOne && animalTwo == true || animalOne && animalThree == true || animalOne && animalFour == true || animalOne && animalFive == true || animalTwo && animalThree == true || animalTwo && animalFour == true || animalTwo && animalFive == true || animalThree && animalFour == true || animalThree && animalFive == true || animalFour && animalFive == true {
        
        return
                ButtonComponent(text: "Next")
                    .offset(y: 325)
                
           
    } else if animalOne == true || animalTwo == true || animalThree == true || animalFour == true || animalFive == true {
        
        return
            ButtonComponent(text: "Select One More Animal")
            .offset(y: 325)
    
}
        return
            ButtonComponent(text: "Select Two Animals")
        .offset(y: 325)
     
 }
