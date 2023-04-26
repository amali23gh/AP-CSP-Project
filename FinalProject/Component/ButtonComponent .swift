
import SwiftUI

//Component File Name: Button Component

struct ButtonComponent: View {
    var text: String
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

struct ButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        ButtonComponent(text: "hi")
    }
}
