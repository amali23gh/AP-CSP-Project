

import Foundation

// Logic File Name: Probability Struct (for Animal's Dliemma) this file contains modle data for other parts of the program. in general our application doesnt use that much long term stored varriables for a model but it does use some. this file contributes to the models section of our MVC structure. 

struct Prob {
    static var animalList: [String] = ["Zebra","Lion","Meerkat","Vulture","Hyena"]
    static var animalProb: [Int] = [80,10,50,60,60]  //the probablility out of 100 that the animal will share
    static var animalShare: [Int] = [0,0]
    static var animalPick: [Int] = [0,0]
    }
