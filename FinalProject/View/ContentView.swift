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
       
       var body: some View {
        
           NavigationView {
               
               ZStack {
                   VStack{
                       VStack {
                           Text("Biology Simulations")
                               .font(.title)
                               .fontWeight(.bold)
                               
                           
                           ButtonComponent(text: "Let's Begin")
                               .onTapGesture{
                                   simulationStart.toggle()
                               }
                           
                           if simulationStart == true {
                               VStack {
                                   ZStack {
                                       VStack{
                                           HStack {
                                               
                                               Image(systemName:"arrowshape.turn.up.right.fill")
                                                   .foregroundColor(.gray)
                                               
                                               Text("Single Trait Simuation")
                                                   .font(.title2)
                                                   .foregroundColor(.gray)
                                                   .onTapGesture {
                                                       simulationSTS.toggle()
                                               
                                                   }
                                               
                                           } .padding()
                                           
                                           if simulationSTS == true {
                                               Text(" - Simulates Natural Selection of                Single Trait Dominance")
                                                   .multilineTextAlignment(.center)
                                               
                                               NavigationLink(destination: SingleTraitSimulation()) {
                                                   ButtonComponent(text: "Start")
                                               } .offset(y: -5)
                                           }
                                           
                                       }
                                   } .frame(width: .infinity, height: .infinity)
                                       .background(.white)
                                       .cornerRadius(10)
                                       .shadow(radius: 15)
                                  
                               ZStack {
                                   VStack {
                                       HStack {
                                           
                                           Image(systemName:"arrowshape.turn.up.right.fill")
                                               .foregroundColor(.gray)
                                           
                                           Text(" Prisoner's Dilemma ")
                                               .font(.title2)
                                               .foregroundColor(.gray)
                                           }
                                       }
                                   } .frame(width: .infinity, height: .infinity)
                                       .background(.white)
                                       .cornerRadius(5)
                                       .shadow(radius: 15)
                               }
                           }
                       }
                   }
               }.frame(maxWidth: .infinity, maxHeight: .infinity)
                   .padding()
                   .ignoresSafeArea()
                   .background(Color(red: 0.91, green: 0.76, blue: 0.66))
           }
          
       }
   }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
