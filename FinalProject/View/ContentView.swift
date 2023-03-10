//
//  ContentView.swift
//  FinalProject
//
//  Created by Adam Ali23 on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                VStack{
                    Text("Population Growth")
                        .bold()
                }
            }
        } .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .ignoresSafeArea()
            .background(Color(red: 0.91, green: 0.59, blue: 0.48))
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
