

import SwiftUI

struct DecisionBox: View {
    
    var animalName: String
    var color: Color
 
    
    var body: some View {
        
       ZStack {
           
           Text(animalName)
               .frame(width:100,height:20)
                .offset(y: -65)
                .foregroundColor(.black)
    
               //  .frame(width: 100, height, 100)
           Image(animalName)
               .resizable()
               .scaledToFit()
               .frame(height:125)
               .cornerRadius(30)
               .offset(y: 10)
            
           
        }
       .frame(width: 150, height: 150)
       .padding(5)
       .background(color)
       .cornerRadius(15)
    }
}

struct DecisionBox_Previews: PreviewProvider {
    static var previews: some View {
        DecisionBox(animalName: "Zebra", color: .gray)
    }
}
