//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Rodrigo Webler on 6/16/15.
//  Copyright (c) 2015 Rodrigo Webler. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var roshambo: RoshamboGame!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        roshambo.playHand()
        
        println(roshambo.resultText)
        
        image.image = UIImage(named: "\(roshambo.resultImageName)")
        
        label.text = roshambo.resultText
    }
    
    
}
