//
//  ContentView.swift
//  FinalProject
//
//  Created by Adam Ali23 on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var simulationStart: Bool = false
    @State var simulationSTS: Bool = false
    @State var simulationPD: Bool = false
    @State var simulationDNA: Bool = false
       var body: some View {
        
           NavigationView {
               ZStack {
                   Text("Biology Simulations")
                       .font(.title)
                       .fontWeight(.bold)
                       .offset(y:-300)
                        if simulationStart == false {
                            ButtonComponent(text: "Let's Begin")
                                .onTapGesture{
                                    simulationStart.toggle()
                                }
                        }else{
                            VStack {
                                VStack{
                                    HStack {
                                        if simulationSTS == false{
                                            Image(systemName:"chevron.right")
                                                .foregroundColor(.gray)
                                        }else{
                                            Image(systemName:"chevron.down")
                                                .foregroundColor(.gray)
                                        }
                                        Text("Single Trait Simuation")
                                            .font(.title2)
                                            .foregroundColor(.black)
                                    }
                                        .frame(width: 250, alignment: .leading)
                                        .padding()
                                        .onTapGesture {
                                        simulationSTS.toggle()
                                    }
                                    if simulationSTS == true {
                                        Text(" - Simulates Natural Selection of                Single Trait Dominance")
                                            .multilineTextAlignment(.center)
                                        
                                        NavigationLink(destination: SingleTraitSimulation()) {
                                            ButtonComponent(text: "Start")
                                        } .offset(y: -5)
                                    }
                                }
                                .frame(width: 300, height: .infinity)
                                .background(.white)
                                .cornerRadius(10)
                                .shadow(radius: 15)
                                VStack {
                                    HStack {
                                        if simulationPD == false{
                                            Image(systemName:"chevron.right")
                                                .foregroundColor(.gray)
                                        }else{
                                            Image(systemName:"chevron.down")
                                                .foregroundColor(.gray)
                                        }
                                            
                                        
                                        Text("Prisoner's Dilemma")
                                            .font(.title2)
                                            .foregroundColor(.black)
                                    }
                                    .frame(width: 250, alignment: .leading)
                                    .padding()
                                        .onTapGesture {
                                            simulationPD.toggle()
                                        }
                                    if simulationPD == true {
                                        Text(" - Simulates game theory princeples in nature")
                                            .multilineTextAlignment(.center)
                                        
                                        NavigationLink(destination: AnimalChoice()){
                                            ButtonComponent(text: "Start")
                                        } .offset(y: -5)
                                    }
                                    }
                                .frame(width: 300, height: .infinity)
                                .background(.white)
                                .cornerRadius(10)
                                .shadow(radius: 15)
                                VStack {
                                    HStack {
                                        if simulationDNA == false{
                                            Image(systemName:"chevron.right")
                                                .foregroundColor(.gray)
                                        }else{
                                            Image(systemName:"chevron.down")
                                                .foregroundColor(.gray)
                                        }
                                            
                                        
                                        Text("DNA Buidler")
                                            .font(.title2)
                                            .foregroundColor(.black)
                                    }
                                    .frame(width: 250, alignment: .leading)
                                    .padding()
                                        .onTapGesture {
                                            simulationDNA.toggle()
                                        }
                                    if simulationDNA == true {
                                        Text("- Allows for user to build custom DNA molecules")
                                            .multilineTextAlignment(.center)
                                        
                                        NavigationLink(destination: DNAbuilder()){
                                            ButtonComponent(text: "Start")
                                        } .offset(y: -5)
                                    }
                                    }    
                                .frame(width: 300, height: .infinity)
                                .background(.white)
                                .cornerRadius(10)
                                .shadow(radius: 15)
                                
                            }
                        }
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                   .padding()
                   .ignoresSafeArea()
                   .background(Color(red: 0.91, green: 0.76, blue: 0.66))
           }
           .navigationBarBackButtonHidden()
       }
   }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
