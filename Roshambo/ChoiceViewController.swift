//
//  ChoiceViewController.swift
//  Roshambo
//
//  Created by Rodrigo Webler on 6/16/15.
//  Copyright (c) 2015 Rodrigo Webler. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController {
    
    func playHand(choice: Int) {
        var game = RoshamboGame(playerHand: choice)
        performSegueWithIdentifier("resultView", sender: game)
    }
    
    @IBAction func playRock(sender: UIButton) {
        playHand(0)
    }
    
    @IBAction func playPaper(sender: UIButton) {
        playHand(1)
    }
    
    @IBAction func playScissors(sender: UIButton) {
        playHand(2)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "resultView") {
            if let resultViewController = segue.destinationViewController as? ResultViewController {
                var game = sender as! RoshamboGame
                resultViewController.roshambo = game
            }
        }
    }

    

}

