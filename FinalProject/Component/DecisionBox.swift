//
//  DecisionBox.swift
//  FinalProject
//
//  Created by Adam Ali23 on 3/13/23.
//

import SwiftUI

struct DecisionBox: View {
    
    var animalName: String
    
    var body: some View {
        
       ZStack {
           
       
      
           Text(animalName)
               .frame(width:100,height:20)
                .offset(y: -65)
                .foregroundColor(.black)
                .padding(55)
    
               //  .frame(width: 100, height, 100)
           Image(animalName)
               .frame(width: 1, height: 1)
               .padding(60)
               .padding(.horizontal)
               .cornerRadius(30)
               .offset(y:10)
               
           
            
           
        }
       .frame(width: 175, height: 150)
       .padding(5)
       .background(.gray)
       .cornerRadius(15)
       .shadow(radius: 15)
    }
}

struct DecisionBox_Previews: PreviewProvider {
    static var previews: some View {
        DecisionBox(animalName: "Zebra")
    }
}
