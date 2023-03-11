//
//  SingleTraitSimulation.swift
//  FinalProject
//
//  Created by Theo Fechtmeyer23 on 3/10/23.
//

import SwiftUI

struct SingleTraitSimulation: View {
    @State var genNum: Int = 0
    @State var startNum: Int = 0
    @State var population: [[Int]] = []
    @State var monogomy: Bool = true
    @State var numOfKid: Int = 2
    @State var fertility: Int = 100
    var body: some View{
        ZStack{
            VStack{
                HStack{
                    VStack(spacing:2){
                        Text("Starting \n Population")
                            .multilineTextAlignment(TextAlignment.center)
                        TextField("", value: $startNum, format: .number)
                            .frame(width: 100)
                            .textFieldStyle(.roundedBorder)
                        
                    }
                    .frame(width:120,height: 100)
                    .background(Color(red: 0.99, green: 0.96, blue: 0.84))
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    VStack{
                        Text("Monogomy")
                            .multilineTextAlignment(TextAlignment.center)
                        Toggle("Monogomy", isOn: $monogomy).labelsHidden()
                        
                    }
                    .frame(width:120,height: 80)
                    .background(Color(red: 0.99, green: 0.96, blue: 0.84))
                    .cornerRadius(10)
                    .shadow(radius: 10)
                }
                HStack{
                    VStack(spacing:2){
                        Text("Average\nAmount of Kids")
                            .multilineTextAlignment(TextAlignment.center)
                        TextField("", value: $numOfKid, format: .number)
                            .frame(width: 100)
                            .textFieldStyle(.roundedBorder)
                    }
                    .frame(width:120,height: 100)
                    .background(Color(red: 0.99, green: 0.96, blue: 0.84))
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    VStack(spacing:2){
                        Text("% Fertility")
                            .multilineTextAlignment(TextAlignment.center)
                        TextField("", value: $fertility, format: .number)
                            .frame(width: 100)
                            .textFieldStyle(.roundedBorder)
                        
                    }
                    .frame(width:120,height: 100)
                    .background(Color(red: 0.99, green: 0.96, blue: 0.84))
                    .cornerRadius(10)
                    .shadow(radius: 10)
                }
            ButtonComponent(text: "Generate The \(genNum+1)\(Suffix(num: genNum+1)) Generation")
                .onTapGesture{
                    if startNum > 0{
                        if genNum == 0 {
                            population = RandomPopCreator(size: startNum)
                        }else if genNum > 0{
                            population = NextGen(startPop: population, fertility: fertility, monogamy: monogomy, numOfKid: numOfKid)
                        }
                        genNum += 1
                    }
                }
            
        }
            .frame(width:400, height: 300)
            .background(Color(red: 0.90, green: 0.80, blue: 0.84))
            .offset(y:-240)
            .ignoresSafeArea()
            ScrollView{
                    GenenomeView(pop: population)
                }
            .offset(y:300)
            

            
            
        }
    }
}

struct SingleTraitSimulation_Previews: PreviewProvider {
    static var previews: some View {
        SingleTraitSimulation()
    }
}
