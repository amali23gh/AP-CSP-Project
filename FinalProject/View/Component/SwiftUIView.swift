//
//  SwiftUIView.swift
//  FinalProject
//
//  Created by Theo Fechtmeyer23 on 4/17/23.
//

import SwiftUI

struct SwiftUIView: View {
    var size: CGFloat
    var base: String
    var body: some View {
        Rectangle()
            .fill(.gray)
            .frame(width: 8*size,height: size)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(size: 4, base: "g")
    }
}
