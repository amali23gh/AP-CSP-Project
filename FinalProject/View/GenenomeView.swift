//
//  GenenomeView.swift
//  FinalProject
//
//  Created by Theo Fechtmeyer23 on 3/10/23.
//

import SwiftUI

struct GenenomeView: View {
    let pop: [[Int]]
    var body: some View {
        HStack{
            ForEach((0...pop.count-1),id: \.self){index in
                GeneImageSelect(person: pop[index])
            }
        }
    }
}

struct GenenomeView_Previews: PreviewProvider {
    static var previews: some View {
        GenenomeView(pop: RandomPopCreator(size: 10))
    }
}
