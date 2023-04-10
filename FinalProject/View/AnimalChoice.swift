//
//  AnimalChoice.swift
//  FinalProject
//
//  Created by Adam Ali23 on 3/13/23.
//

import SwiftUI

struct AnimalChoice: View {
    
    @State var meerkatProb: [Int] = Prob.meerkatProb
    @State var zebraProb: [Int] = Prob.zebraProb
    @State var lionProb: [Int] = Prob.lionProb
    @State var hyenaProb: [Int] = Prob.lionProb
    @State var vultureProb: [Int] = Prob.vultureProb
    
    @State var zebraBool: Bool = false
    @State var lionBool: Bool = false
    @State var vultureBool: Bool = false
    @State var meerkatBool: Bool = false
    @State var hyenaBool: Bool = false
    
    
        
        
        var body: some View {
            
            ZStack {
                VStack{
                    Text("Animal Selection")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    HStack {
                        DecisionBox(animalName: "Zebra", color: AnimalBoxColor(color: zebraBool))
                            .onTapGesture {
                                zebraBool.toggle()
                            }
       
                        DecisionBox(animalName: "Lion", color: AnimalBoxColor(color: lionBool))
                            .onTapGesture {
                                lionBool.toggle()
                            }
                    }
                    HStack {
                        DecisionBox(animalName: "Vulture", color: AnimalBoxColor(color: vultureBool))
                            .onTapGesture {
                                vultureBool.toggle()
                            }
                        DecisionBox(animalName: "Meerkat", color: AnimalBoxColor(color: meerkatBool))
                            .onTapGesture {
                                meerkatBool.toggle()
                            }
                    }
                HStack  {
                        DecisionBox(animalName: "Hyena", color: AnimalBoxColor(color: hyenaBool))
                            .onTapGesture {
                                hyenaBool.toggle()
                            }
                    }

                }
                
                NavigationLink(destination: AnimalProbView()) {
                    AnimalPage(animalOne: zebraBool, animalTwo: lionBool, animalThree: hyenaBool, animalFour: vultureBool, animalFive: meerkatBool)
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

