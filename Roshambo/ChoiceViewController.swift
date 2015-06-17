//
//  ChoiceViewController.swift
//  Roshambo
//
//  Created by Rodrigo Webler on 6/16/15.
//  Copyright (c) 2015 Rodrigo Webler. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController {
    
    let choices = ["Rock", "Paper", "Scissors"]
    
    var choice: Int?
    
    @IBAction func playRock(sender: UIButton) {
        choice = 0
        performSegueWithIdentifier("resultView", sender: self)
    }
    
    @IBAction func playPaper(sender: UIButton) {
        choice = 1
        performSegueWithIdentifier("resultView", sender: self)
    }
    
    @IBAction func playScissors(sender: UIButton) {
        choice = 2
        performSegueWithIdentifier("resultView", sender: self)
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "resultView") {
            if let resultViewController = segue.destinationViewController as? ResultViewController {
                resultViewController.playerChoice = choices[choice!]
                resultViewController.aiChoice = randomRoshamboValue()
            }
        }
    }

    

}

