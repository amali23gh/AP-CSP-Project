//
//  GeneImageSelect.swift
//  FinalProject
//
//  Created by Theo Fechtmeyer23 on 3/10/23.
//

import SwiftUI

struct GeneImageSelect: View {
    let person: [Int]
    var body: some View {
        if person == [0,0,0]{
            Image(systemName: "square")
        }else if person == [0,1,0] || person == [0,0,1]{
            Image(systemName: "square.lefthalf.filled")
        }else if person == [0,1,1]{
            Image(systemName: "square.fill")
        }else if person == [1,0,0]{
            Image(systemName: "circle")
        }else if person == [1,0,1] || person == [1,1,0]{
            Image(systemName: "circle.lefthalf.filled")
        } else if person == [1,1,1]{
            Image(systemName: "circle.fill")
        }else{
            Image(systemName: "questionmark.app.dashed")
        }
    }
}
struct GeneImageSelect_Previews: PreviewProvider {
    static var previews: some View {
        GeneImageSelect(person:[0,1,1])
    }
}
