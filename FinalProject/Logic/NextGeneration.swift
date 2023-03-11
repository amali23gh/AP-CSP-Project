//
//  NextGeneration.swift
//  FinalProject
//
//  Created by Theo Fechtmeyer23 on 3/10/23.
//

import Foundation

func NextGen(startPop: [[Int]], fertility: Int, monogamy: Bool, numOfKid: Int) -> [[Int]]{
    var malePop: [[Int]] = []
    var femalePop: [[Int]] = []
    var secondGen: [[Int]] = []
    if fertility == 0{
       return []
    }

    for index in 0 ... startPop.count - 1{
        if startPop[index][0] < 1{
            malePop.append([startPop[index][1],startPop[index][2]])
        }else{
            femalePop.append([startPop[index][1],startPop[index][2]])
        }
    }
        for _ in 0 ... (((femalePop.count-1)*fertility) / 100){
            if malePop.count == 0{
                return secondGen
            }
                let femaleParent = Int.random(in: 0 ... femalePop.count-1)
                let maleParent = Int.random(in: 0 ...  malePop.count-1)
            for _ in (0 ... Int.random(in: 1 ... numOfKid*2 - 1)){
                secondGen.append([Int.random(in: 0 ... 1), femalePop[femaleParent][Int.random(in: 0 ... 1)], malePop[maleParent][Int.random(in: 0 ... 1)]])
            }
            //1st element is sex of baby, 2nd element is allele from mother, 3rd element is allele from father
                femalePop.remove(at: femaleParent)
                if monogamy == true{
                    malePop.remove(at: maleParent)
                }
        }
    return secondGen
}


