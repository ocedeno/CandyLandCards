//
//  CandyLandBrain.swift
//  Candy Land Cards
//
//  Created by Octavio Cedeno on 8/11/16.
//  Copyright © 2016 Cedeno Enterprise Inc. All rights reserved.
//

import Foundation

struct CandyBrain {
    
    private var cardImageName = String()
    var cardOptions = [
        ["Green Card": 8],
        ["Blue Card": 8],
        ["Orange Card": 8],
        ["Purple Card": 8],
        ["Red Card": 8],
        ["Yellow Card": 8],
        ["Double Yellow Card": 2],
        ["Double Red Card": 2],
        ["Double Purple Card": 2],
        ["Double Orange Card": 2],
        ["Double Blue Card": 2],
        ["Double Green Card": 2],
        ["Jolly Gumdrop": 1],
        ["Lollipop Queen": 1],
        ["Mint Queen": 1],
        ["Peppermint Cane": 1],
        ["Plum Guy": 1],
        ["Toffee Chick": 1]
    ]
    
    var cardDeckAmount = 66
    
    mutating func drawCards()-> String {
        let index = Int(arc4random_uniform(UInt32(cardOptions.count)))
        while cardDeckAmount > 0 {
            let randomCardOption = cardOptions[index]
            for (key, value) in randomCardOption {
                if value > 0 {
                    cardDeckAmount -= 1
                    let newNumber = value - 1
                    cardOptions[index][key] = newNumber
                    cardImageName = key
                } else {
                    cardImageName = drawCards()
                }
            }
            break
        }
        return cardImageName
    }
}
