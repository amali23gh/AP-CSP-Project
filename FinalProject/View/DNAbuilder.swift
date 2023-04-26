

import SwiftUI

struct DNAbuilder: View {
    
    // View File Name: DNAbuilder
    
    @State var DNAseq: String = ""
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .center){
                    Text("DNA SIMULATION")
                        .font(.custom(
                            "AmericanTypewriter",
                            fixedSize: 36))
                    TextField("Enter DNA Sequence",text: $DNAseq,axis: .vertical)
                        .padding()
                        .frame(width:350, height: .infinity)
                        .background(Color(red: 0.90, green: 0.80, blue: 0.84))
                    VStack{
                        Text("Coding Strand")
                            .font(.custom(
                                "AmericanTypewriter",
                                fixedSize: 20))
                        ScrollView(.horizontal){
                            DNAview53(size: 5, DNAseq: DNAseq)
                            
                        }
                        .frame(width: .infinity, height: 100)
                        .shadow(radius: 10)
                    }
                    .padding()
                    .background(Color(red: 0.90, green: 0.80, blue: 0.84))
                }
            }
        }
    }
}

struct DNAbuilder_Previews: PreviewProvider {
    static var previews: some View {
        DNAbuilder()
    }
}
