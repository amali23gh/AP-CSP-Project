

import Foundation

// Logic File Name: Suffix (for SingleTraitSimulation)

func Suffix(num: Int) -> String{
    if num == 1{
        return "st"
    }else if num == 2{
        return "nd"
    }else if num == 3{
        return "rd"
    }else{
        return "th"
    }
}
