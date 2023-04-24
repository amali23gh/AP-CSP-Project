

import Foundation

func SelectivePresure(pop:[[Int]],domSurvive: Int ,recSurvive: Int ,carrySurvive: Int) -> [[Int]]{
    var newPop: [[Int]] = pop
    for i in 0 ...  newPop.count-1{
        if pop[i][1] == 0 && pop[i][2] == 0{
            if recSurvive < Int.random(in: 0 ... 100){
                newPop[i][0] = 2
            }
        }else if pop[i][1] == 1 && pop[i][2] == 1{
            if domSurvive < Int.random(in: 0 ... 100){
                newPop[i][0] = 2
            }
        } else{
            if carrySurvive < Int.random(in: 0 ... 100){
                newPop[i][0] = 2
            }
        }
    }
    newPop.removeAll { $0 == [2,0,0]}
    newPop.removeAll { $0 == [2,1,0]}
    newPop.removeAll { $0 == [2,0,1]}
    newPop.removeAll { $0 == [2,1,1]}
  
    return newPop
}
