//
//  Suffix.swift
//  FinalProject
//
//  Created by Theo Fechtmeyer23 on 3/10/23.
//

import Foundation

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
