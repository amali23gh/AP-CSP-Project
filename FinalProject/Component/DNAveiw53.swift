//
//  DNAveiw53.swift
//  FinalProject
//
//  Created by Theo Fechtmeyer23 on 4/17/23.
//

import SwiftUI

struct DNAveiw53: View {
    var size: CGFloat
    var DNAseq: String
    var body: some View{
        HStack(spacing: -78*size){
            ForEach(Array(DNAseq), id: \.self){ i in
                if i == "A" || i == "a"{
                   Image("Abase")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100*size)
                }else if i == "T" || i == "t"{
                    Image("Tbase")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100*size)
                }else if i == "C" || i == "c"{
                    Image("Cbase")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100*size)
                }else if i == "G" || i == "g"{
                    Image("Gbase")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100*size)
                }
            }
        }
    }
}

struct DNAveiw53_Previews: PreviewProvider {
    static var previews: some View {
        DNAveiw53(size: 2, DNAseq: "AAAAATGATGACAGTACAGATGAC")
    }
}
