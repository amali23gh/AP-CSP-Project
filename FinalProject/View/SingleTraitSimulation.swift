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
    @State var recessiveSurvival: Int = 100
    @State var DominantSurvival: Int = 100
    @State var carrierSurvival: Int = 100
    var body: some View{
        NavigationView{
            ZStack{
                VStack{
                    Spacer()
                        .frame(height: 80)
                    ScrollView(.horizontal){
                        Spacer()
                            .frame(height: 10)
                        HStack{
                            Spacer()
                                .frame(width:20)
                            VStack(spacing: 20){
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
                                    Text("Monogamy")
                                        .multilineTextAlignment(TextAlignment.center)
                                    Toggle("Monogajmy", isOn: $monogomy).labelsHidden()
                                    
                                }
                                .frame(width:120,height: 80)
                                .background(Color(red: 0.99, green: 0.96, blue: 0.84))
                                .cornerRadius(10)
                            }
                            VStack{
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
                            }
                            VStack{
                                Text("% Survival\nof\nHomozygous\nDominant")
                                    .multilineTextAlignment(TextAlignment.center)
                                TextField("", value: $DominantSurvival, format: .number)
                                    .frame(width: 100)
                                    .textFieldStyle(.roundedBorder)
                                
                            }
                            .frame(width:120,height: 200)
                            .background(Color(red: 0.99, green: 0.96, blue: 0.84))
                            .cornerRadius(10)
                            VStack{
                                Text("% Survival\nof\nHeterozygous\nDominant")
                                    .multilineTextAlignment(TextAlignment.center)
                                TextField("", value: $carrierSurvival, format: .number)
                                    .frame(width: 100)
                                    .textFieldStyle(.roundedBorder)
                                
                            }
                            .frame(width:120,height: 200)
                            .background(Color(red: 0.99, green: 0.96, blue: 0.84))
                            .cornerRadius(10)
                            VStack{
                                Text("% Survival\nof\nHomozygous\nrecessive")
                                    .multilineTextAlignment(TextAlignment.center)
                                TextField("", value: $recessiveSurvival, format: .number)
                                    .frame(width: 100)
                                    .textFieldStyle(.roundedBorder)
                                
                            }
                            .frame(width:120,height: 200)
                            .background(Color(red: 0.99, green: 0.96, blue: 0.84))
                            .cornerRadius(10)
                            Spacer()
                                .frame(width: 20)
                            
                        }
                        Spacer()
                            .frame(height: 10)
                        
                    }
                    .background(Color(red: 0.90, green: 0.70, blue: 0.76))
                    .shadow(radius: 10)
                    ButtonComponent(text: "Generate The \(genNum+1)\(Suffix(num: genNum+1)) Generation")
                        .onTapGesture{
                            if startNum > 0 {
                                
                                if genNum == 0 {
                                    population = RandomPopCreator(size: startNum)
                                    genNum += 1
                                }else if genNum > 0 && population.count > 0{
                                    population = NextGen(startPop: population, fertility: fertility, monogamy: monogomy, numOfKid: numOfKid)
                                    genNum += 1
                                    if population.count < 1 {
                                        genNum = 0
                                    }
                                }
                            }
                        }
                    ButtonComponent(text: "Apply Selective Pressure")
                        .onTapGesture {
                            if population.count > 0{
                                population = SelectivePresure(pop: population, domSurvive: DominantSurvival, recSurvive: recessiveSurvival, carrySurvive: carrierSurvival)
                                if population.count == 0{
                                    genNum = 0
                                }
                            }
                        }
                    
                }
                .frame(width:400, height: 480)
                .background(Color(red: 0.90, green: 0.80, blue: 0.84))
                .offset(y:-240)
                .ignoresSafeArea()
                
                GenenomeView(pop: population,hight: 380)
                    .offset(y:190)
                
                if population.count > 0{
                    Text("Population: \(population.count) ")
                        .offset( y:-12)
                }
                /*
                NavigationLink(destination: ContentView()){
                    Text("back")
                    .ignoresSafeArea()
                    .foregroundColor(.black)
                    }
                .ignoresSafeArea()
                .frame(width:60, height: 30)
                .foregroundColor(.black)
                .background(Color(red: 0.99, green: 0.96, blue: 0.84))
                .cornerRadius(10)
                .offset(x:-150, y:380)
                */
            }
        }
    }
}

struct SingleTraitSimulation_Previews: PreviewProvider {
    static var previews: some View {
        SingleTraitSimulation()
    }
}
