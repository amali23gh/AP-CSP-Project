//
//  AnimalProbView.swift
//  FinalProject
//
//  Created by Adam Ali23 on 4/4/23.
//

import SwiftUI

struct AnimalProbView: View {
    
    @State var meerkatProb: [Int] = Prob.meerkatProb
    @State var zebraProb: [Int] = Prob.zebraProb
    @State var lionProb: [Int] = Prob.lionProb
    @State var hyenaProb: [Int] = Prob.lionProb
    @State var vultureProb: [Int] = Prob.vultureProb
    
    
    var body: some View {
       
        NavigationView {
            ZStack {
                VStack {
                   
                    
                    
                    
                    HStack {
                        DecisionBoxTwo(offsetVal: CGSize(width: -5, height: 0))
                        DecisionBoxTwo(offsetVal: CGSize(width:  5, height: 0))
                    }
                   
                    HStack {
                        DecisionBoxTwo(offsetVal: CGSize(width: -5, height: 10))
                        DecisionBoxTwo(offsetVal: CGSize(width:  5, height: 10))
                    }
                    
                    
                    
                }
                
            } .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .ignoresSafeArea()
                .background(.white)
        }
    }
}

struct AnimalProbView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalProbView()
    }
}
