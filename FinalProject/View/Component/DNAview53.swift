
import SwiftUI

struct DNAview53: View {
    
    // Component File Name: DNAView53
    
    
    var size: CGFloat
    var DNAseq: String
    var body: some View{
        HStack(alignment: .top, spacing: 5*size){
            Text("5'")
                .font(.custom("AmericanTypewriter",
                    fixedSize: 5*size))
            HStack(alignment: .top, spacing: -1.1*size){
                ForEach(Array(DNAseq), id: \.self){ i in
                    if i == "A" || i == "a"{
                        ZStack{
                            Image("Abase")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 10*size)
                            Text("A")
                                .font(.custom("AmericanTypewriter",
                                              fixedSize: 4*size))
                        }
                    }else if i == "T" || i == "t"{
                        ZStack{
                            Image("Tbase")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 10*size)
                            Text("T")
                                .font(.custom("AmericanTypewriter",
                                              fixedSize: 4*size))
                        }
                    }else if i == "C" || i == "c"{
                        ZStack{
                            Image("Cbase")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 10*size)
                            Text("C")
                                .font(.custom("AmericanTypewriter",
                                              fixedSize: 4*size))
                        }
                        
                    }else if i == "G" || i == "g"{
                        ZStack{
                            Image("Gbase")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 10*size)
                            Text("G")
                                .font(.custom("AmericanTypewriter",
                                              fixedSize: 4*size))
                            
                        }
                    }
                }
            }
            Text("3'")
                .font(.custom("AmericanTypewriter",
                    fixedSize: 5*size))
        }
    }
}

struct DNAveiw53_Previews: PreviewProvider {
    static var previews: some View {
        DNAview53(size: 4, DNAseq: "Atgtgtgtacac")
    }
}
