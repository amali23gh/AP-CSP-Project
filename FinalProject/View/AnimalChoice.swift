//
//  AnimalChoice.swift
//  FinalProject
//
//  Created by Adam Ali23 on 3/13/23.
//

import SwiftUI

struct AnimalChoice: View {
    var body: some View {
        
        ZStack {
            VStack{
                Text("Select Two Animals:")
                
            
                HStack {
                    
                    DecisionBox(animalName: "Zebra")
                    
                    DecisionBox(animalName: "Lion")
                }
                
                HStack {
                    
                    DecisionBox(animalName: "Vulture")
                    
                    DecisionBox(animalName: "Meerkat")
                    
                }
                
                HStack  {
                    
                    DecisionBox(animalName: "Hyena")
                    
                }
                
            }
        } .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .ignoresSafeArea()
            .background(Color(red: 0.91, green: 0.76, blue: 0.66))
    }
}

struct AnimalChoice_Previews: PreviewProvider {
    static var previews: some View {
        AnimalChoice()
    }
}
