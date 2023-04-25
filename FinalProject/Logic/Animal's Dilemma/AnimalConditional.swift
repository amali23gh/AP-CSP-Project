

import Foundation
import SwiftUI


func animalChoice() -> some View {
    
    
    var animalShare: [Bool] = [false, false]
    
    for i in 0...Prob.animalPick.count - 1 {
        
        let number = Int.random(in: 0...100)
    
        
        if number <= Prob.animalProb[Prob.animalPick[i]-1]{
            animalShare[i] = true
        }
    }
    
    if animalShare[0] == true && animalShare[1] == true  {
            
            return Text("Both Animals Share!")
            
        } else if animalShare[0] == false && animalShare[1] == false {
            
            return Text("Since Both Animals Wanted to Steal, They Both get Nothing!")
            
        
        } else if animalShare[0] == false && animalShare[1] == true {
            
                            
                return  Text("Oh No! The Food was Taken by \(Prob.animalList[Prob.animalPick[0]-1])")
                
        } else if  animalShare[0] == true && animalShare[1] == false {
                
                return Text("Oh No! The Food was Taken by \(Prob.animalList[Prob.animalPick[1]-1])")
        }
    
    return Text("Error")
    
            
        }
    
    
    
   
    

    func  AnimalBoxColor(color: Bool) -> Color {
        
        if color == true {
            return .yellow
        } else {
            return .gray
        }
    }
    

