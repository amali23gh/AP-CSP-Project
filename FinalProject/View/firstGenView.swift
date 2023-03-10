//
//  firstGenView.swift
//  FinalProject
//
//  Created by Theo Fechtmeyer23 on 3/10/23.
//

import SwiftUI

struct firstGenView: View {
    let firstGen = RandomPopCreator(size: 10)
    var body: some View {
        VStack{
            HStack{
                ForEach((0...firstGen.count-1), id: \.self){index in
                    if firstGen[index] == [0,0,0]{
                        Image(systemName: "square")
                    }else if firstGen[index] == [0,1,0] || firstGen[index] == [0,0,1]{
                        Image(systemName: "square.lefthalf.filled")
                    }else if firstGen[index] == [1,1,1]{
                        
                    }else if firstGen[index] == [0,0,0]{
                        
                    }else if firstGen[index] == [0,0,1] || firstGen[index] == [0,1,0]{
                    }

                    
                }
            }
        }
    }
}
struct firstGenView_Previews: PreviewProvider {
    static var previews: some View {
        firstGenView()
    }
}
