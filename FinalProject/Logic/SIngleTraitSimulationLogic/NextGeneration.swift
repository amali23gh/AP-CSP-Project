
import Foundation

func NextGen(startPop: [[Int]], fertility: Int, monogamy: Bool, numOfKid: Int) -> [[Int]]{
    var malePop: [[Int]] = []
    var femalePop: [[Int]] = []
    var secondGen: [[Int]] = []
    if startPop.count > 0{
        for index in 0 ... startPop.count - 1{
            if startPop[index][0] < 1{
                malePop.append([startPop[index][1],startPop[index][2]])
            }else{
                femalePop.append([startPop[index][1],startPop[index][2]])
            }
        }
    }
    if femalePop.count > 0 && fertility > 0 && numOfKid > 0 && malePop.count > 0 {
        for _ in 0 ... (((femalePop.count-1)*fertility) / 100){
            let femaleParent = Int.random(in: 0 ... femalePop.count-1)
            let maleParent = Int.random(in: 0 ...  malePop.count-1)
            let kids: Int = Int.random(in: 0 ... (numOfKid*2))
            if kids != 0{
                for _ in (1 ... kids){
                    secondGen.append([Int.random(in: 0 ... 1), femalePop[femaleParent][Int.random(in: 0 ... 1)], malePop[maleParent][Int.random(in: 0 ... 1)]])
                }
            }
            //1st element is sex of baby, 2nd element is allele from mother, 3rd element is allele from father
            femalePop.remove(at: femaleParent)
            if monogamy == true{
                malePop.remove(at: maleParent)
                if malePop.count < 1{
                    return secondGen
                }
            }
        }
    }
    return secondGen
}


