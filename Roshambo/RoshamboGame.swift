//
//  RoshamboGame.swift
//  Roshambo
//
//  Created by Rodrigo Webler on 6/18/15.
//  Copyright (c) 2015 Rodrigo Webler. All rights reserved.
//

import Foundation

class RoshamboGame {
    
    let choices = ["Rock", "Paper", "Scissors"]
    
    var playerHand: String!
    var aiHand: String!
    var resultImageName: String!
    var resultText: String!
    
    init(playerHand: Int) {
        self.playerHand = choices[playerHand]
        self.aiHand = randomRoshamboValue()
    }
    
    /**
    * Randomly generates Rock, Paper or Scissors
    */
    func randomRoshamboValue() -> String {
        // Generate a random Int32 using arc4Random
        let randomValue = arc4random() % 3
        
        // Return the corresponding choice
        return choices[Int(randomValue)]
    }
    
    func playHand() {
        if (playerHand == aiHand) {
            //It's a tie!
            resultImageName = "Tie"
            resultText = "It's a tie!"
        } else if (playerHand == "Rock") {
            if (aiHand == "Scissors") {
                resultImageName = "RockBeatsScissors"
                resultText = "Player wins! Rock crushes Scissors."
            } else {
                resultImageName = "PaperBeatsRock"
                resultText = "AI wins! Paper wraps Rock."
            }
        } else if (playerHand == "Paper") {
            if (aiHand == "Rock") {
                resultImageName = "PaperBeatsRock"
                resultText = "Player wins! Paper wraps Rock."
            } else {
                resultImageName = "ScissorsBeatsPaper"
                resultText = "AI wins! Scissors cut Paper."
            }
        } else {
            if (aiHand == "Paper") {
                resultImageName = "ScissorsBeatsPaper"
                resultText = "Player wins! Scissors cut Paper."
            } else {
                resultImageName = "RockBeatsScissors"
                resultText = "AI wins! Rock crushes Scissors."
            }
        }
    }
}