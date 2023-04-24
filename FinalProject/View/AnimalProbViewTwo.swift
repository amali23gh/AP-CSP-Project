

import SwiftUI


struct AnimalProbViewTwo: View {
    

    
    
    var body: some View {
        
        
        NavigationView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 500))], spacing: 10){
                
                ForEach ((0...Prob.animalPick.count - 1), id: \.self){ i in
                    Text(Prob.animalList[Prob.animalPick[i]-1])
                    Image(Prob.animalList[Prob.animalPick[i]-1])
                    
                }
                
                animalChoice()
                
                NavigationLink(destination: AnimalChoice()) {
                    ButtonComponent(text: "Simulate Another Pair")
                }
                .onTapGesture {
                    Prob.animalPick = [0,0]
                }
                
                NavigationLink(destination: ContentView()) {
                    ButtonComponent(text: "Return to Home Page")
                      
                }
                
            }
        } .navigationBarBackButtonHidden()
        
    }
    
    struct AnimalProbViewTwo_Previews: PreviewProvider {
        static var previews: some View {
            AnimalProbViewTwo()
        }
    }
    
    
}
