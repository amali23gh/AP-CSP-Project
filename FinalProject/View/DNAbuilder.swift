//
//  DNA_builder.swift
//  FinalProject
//
//  Created by Theo Fechtmeyer23 on 4/17/23.
//

import SwiftUI

struct DNAbuilder: View {
    @State var DNAseq: String = ""
    var body: some View {
        ZStack{
            Text("DNA SIMULATION")
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 36))
                .offset(y:-350)
            TextField("Enter DNA Sequence",text: $DNAseq)
                .padding()
                .frame(width:350, height: .infinity)
                .background(Color(red: 0.90, green: 0.80, blue: 0.84))
                .offset(y:-300)
            ScrollView(.horizontal){
                DNAveiw53(size: 2, DNAseq: DNAseq)
            }
        }
    }
}

struct DNAbuilder_Previews: PreviewProvider {
    static var previews: some View {
        DNAbuilder()
    }
}
