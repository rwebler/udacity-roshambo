//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Rodrigo Webler on 6/16/15.
//  Copyright (c) 2015 Rodrigo Webler. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var playerChoice: String?
    var aiChoice: String?
    
    @IBOutlet weak var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var result = test(playerChoice!, ai: aiChoice!)
        
        println(result)
        
        image.image = UIImage(named: "\(result)")
    }
    
    func test (player:String, ai:String) -> String {
        if (player == ai) {
            //It's a tie!
            return "Tie"
        } else if (player == "Rock") {
            if (ai == "Scissors") {
                //Player wins. Rock crushes Scissors
                return "RockBeatsScissors"
            } else {
                //AI wins. Paper wraps Rock
                return "PaperBeatsRock"
            }
        } else if (player == "Paper") {
            if (ai == "Rock") {
                //Player wins. Paper wraps Rock
                return "PaperBeatsRock"
            } else {
                //AI wins. Scissors cut Paper
                return "ScissorsBeatsPaper"
            }
        } else {
            if (ai == "Paper") {
                //Player wins. Scissors cut Paper
                return "ScissorsBeatsPaper"
            } else {
                //AI wins. Rock crushes Scissors
                return "RockBeatsScissors"
            }
        }
    }
}
