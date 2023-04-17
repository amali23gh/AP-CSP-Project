//
//  DecisionBoxTwo.swift
//  FinalProject
//
//  Created by Adam Ali23 on 4/16/23.
//

import SwiftUI

struct DecisionBoxTwo: View {
  
    var offsetVal: CGSize = CGSize(width: 0, height: 0)
    
    
    var body: some View {
        
        
        ZStack  {
            
            
            
            
        }  .frame(width: 125, height: 125)
            .padding(5)
            .background(.white)
            .cornerRadius(15)
            .shadow(radius: 15)
            .offset(offsetVal)
       
    }
}

struct DecisionBoxTwo_Previews: PreviewProvider {
    static var previews: some View {
        DecisionBoxTwo()
    }
}
