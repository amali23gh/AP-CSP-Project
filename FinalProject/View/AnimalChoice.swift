//
//  AnimalChoice.swift
//  FinalProject
//
//  Created by Adam Ali23 on 3/13/23.
//

import SwiftUI

struct AnimalChoice: View {
    
    @State var boxColors: [Bool] = Array(repeating: false, count: 5)
    var body: some View {
        NavigationView{
            ZStack {
                VStack{
                    Text("Animal Selection")
                        .font(.title)
                        .fontWeight(.bold)
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 20) {
                        ForEach ((0 ... Prob.animalList.count-1), id: \.self){ i in
                            DecisionBox(animalName: Prob.animalList[i], color: AnimalBoxColor(color: boxColors[i]))
                                .onTapGesture{
                                    if Prob.animalPick[0] == 0 && Prob.animalPick[1] != i+1{
                                        Prob.animalPick[0] = (i+1)
                                        boxColors[i] = true
                                    }else if Prob.animalPick[1] == 0 && Prob.animalPick[0] != i+1{
                                        Prob.animalPick[1] = (i+1)
                                        boxColors[i] = true
                                    }else if Prob.animalPick[0] == i+1 {
                                        Prob.animalPick[0] = 0
                                        boxColors[i] = false
                                    }else if Prob.animalPick[1] == i+1{
                                        Prob.animalPick[1] = 0
                                        boxColors[i] = false
                                    }
                                }
                        }
                    }
                    .padding(.horizontal)
                    if Prob.animalPick[0] == 0{
                        Text("Select Animal")
                    } else{
                        Text(Prob.animalList[Prob.animalPick[0]-1])
                    }
                    if Prob.animalPick[1] == 0{
                        Text("Select Animal")
                    } else{
                        Text(Prob.animalList[Prob.animalPick[1]-1])
                    }
                    
                    if Prob.animalPick[0] != 0 && Prob.animalPick[1] != 0{
                        NavigationLink(destination: AnimalProbView()) {
                            ButtonComponent(text:"Continue")
                        }
                    }else{
                        ButtonComponent(text:"Select Animals")
                    }
                    
                }
                .shadow(radius: 3, x: -3,y:4)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .ignoresSafeArea()
            .background(Color(red: 0.91, green: 0.76, blue: 0.66))
            
        }
        .navigationBarBackButtonHidden()
    }
}
    
    
    struct AnimalChoice_Previews: PreviewProvider {
        static var previews: some View {
            AnimalChoice()
        }
    }

