//
//  GenenomeView.swift
//  FinalProject
//
//  Created by Theo Fechtmeyer23 on 3/10/23.
//

import SwiftUI

struct GenenomeView: View {
    let pop: [[Int]]
    let hight: CGFloat
    var body: some View {
    let columns = [
            GridItem(.adaptive(minimum: 80))
        ]
        if pop.count != 0 {
            
        ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach((0...pop.count-1),id: \.self){index in
                        GeneImageSelect(person: pop[index])
                    }
                }
                    .padding(.horizontal)
        }
            .frame(maxHeight: hight)
   
                    
    }else{
          Text("The Simulation Is Lifeless")
        }
    }
}

struct GenenomeView_Previews: PreviewProvider {
    static var previews: some View {
        GenenomeView(pop: RandomPopCreator(size: 80), hight: 400)
    }
}
