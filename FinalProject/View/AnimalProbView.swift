//
//  AnimalProbView.swift
//  FinalProject
//
//  Created by Adam Ali23 on 4/4/23.
//

import SwiftUI

struct AnimalProbView: View {
    
    
    
    var body: some View {
        
        
        NavigationView {
            ZStack { 
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 500))], spacing: 20) {
                ForEach ((0...Prob.animalPick.count - 1), id: \.self){ i in
                    Image(Prob.animalList[Prob.animalPick[i]-1])
                    Text("Probability that the \(Prob.animalList[Prob.animalPick[i]-1]) will share food is: \(Prob.animalProb[Prob.animalPick[i]-1])%")
                    
                    
                }
                NavigationLink(destination: AnimalProbViewTwo()){
                    ButtonComponent(text: "Simulate Event")
                }
                
                
             
                    
                    
                    
                }
                
            } .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .ignoresSafeArea()
                .background(Color(red: 0.91, green: 0.76, blue: 0.66))
            
        } .navigationBarBackButtonHidden()
    }
    
    
    struct AnimalProbView_Previews: PreviewProvider {
        static var previews: some View {
            AnimalProbView()
        }
    }
}
