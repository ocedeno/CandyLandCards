//
//  ViewController.swift
//  Candy Land Cards
//
//  Created by Octavio Cedeno on 8/11/16.
//  Copyright © 2016 Cedeno Enterprise Inc. All rights reserved.
//

import UIKit

class CandyCardViewController: UIViewController {
    
    @IBOutlet weak var numberOfCardsInDeck: UILabel!
    @IBOutlet weak var cardPlaceholder: UIImageView!
    var candyBrain = CandyBrain()
    
    @IBAction func shuffleCards() {
        candyBrain.cardDeckAmount = 66
        numberOfCardsInDeck.text = "66"
        cardPlaceholder.image = nil
        candyBrain.cardOptions = [
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
        
    }
    
    @IBAction func dealCard() {
        cardPlaceholder.image = UIImage(named: candyBrain.drawCards())
        numberOfCardsInDeck.text = String(candyBrain.cardDeckAmount)
    }
}

