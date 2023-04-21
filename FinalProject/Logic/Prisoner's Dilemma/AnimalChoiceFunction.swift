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
        
        return NavigationView {
            NavigationLink(destination: AnimalProbView()) {
            
            }
        }
        
    } else if animalOne == true || animalTwo == true || animalThree == true || animalFour == true || animalFive == true {
        
        return ButtonComponent(text: "Select One More Animal")
            .offset(y: 325)
    }
  
    return ButtonComponent(text: "Select Two Animals")
        .offset(y: 325)
    
}
    
func animalSelection(animalOne: Bool, animalTwo: Bool, animalThree: Bool, animalFour: Bool, animalFive: Bool) -> some View {
    
    if animalOne && animalTwo == true {
        
        Prob.animalOne = "Meerkat"
        Prob.animalTwo = "Lion"
        return EmptyView()
    } else if animalOne && animalThree == true {
        
        Prob.animalOne = "Meerkat"
        Prob.animalTwo = "Zebra"
        return EmptyView()
    } else if animalOne && animalFour == true {
        
        Prob.animalOne = "Meerkat"
        Prob.animalTwo = "Hyena"
        return EmptyView()
    } else if animalOne && animalFive == true {
        Prob.animalOne = "Meerkat"
        Prob.animalTwo = "Vulture"
        return EmptyView()
    } else if animalTwo && animalThree == true {
        Prob.animalOne = "Lion"
        Prob.animalTwo = "Zebra"
        return EmptyView()
    } else if animalTwo && animalFour == true {
        Prob.animalOne = "Lion"
        Prob.animalTwo = "Hyena"
        return EmptyView()
    } else if animalTwo && animalFive == true {
        Prob.animalOne = "Lion"
        Prob.animalTwo = "Vulture"
        return EmptyView()
    } else if animalThree && animalFour == true {
        Prob.animalOne = "Zebra"
        Prob.animalTwo = "Hyena"
        return EmptyView()
    } else if animalThree && animalFive == true {
        Prob.animalOne = "Zebra"
        Prob.animalTwo = "Vulture"
        return EmptyView()
    } else if animalFour && animalFive == true {
        Prob.animalOne = "Hyena"
        Prob.animalTwo = "Vulture"
        return EmptyView()
    } else {
        
        return EmptyView()
        
    }
    
    
}


