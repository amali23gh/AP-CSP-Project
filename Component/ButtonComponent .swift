//
//  ButtonComponent .swift
//  FinalProject
//
//  Created by Adam Ali23 on 3/10/23.
//

import SwiftUI

struct ButtonComponent_: View {
    var text: String = "Select List"
    var background: Color  = Color(red: 0.99, green: 0.96, blue: 0.84)
    var body: some View {
    
            Text(text)
            .foregroundColor(.black)
                .padding()
                .padding(.horizontal)
                .background(background)
                .cornerRadius(15)
                .shadow(radius: 15)
    }
}

struct ButtonComponent__Previews: PreviewProvider {
    static var previews: some View {
        ButtonComponent_()
    }
}
