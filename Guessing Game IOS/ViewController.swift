//
//  ViewController.swift
//  Guessing Game IOS
//
//  Created by David Rademaker on 3/8/18.
//  Copyright © 2018 David Rademaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userGuessField: UITextField!
    @IBOutlet weak var rulesLabel: UILabel!
    @IBOutlet weak var userFeedbackLabel: UILabel!
    
    var randomNumber = Int(arc4random_uniform(100))
    var userGuess: Int!
    
    var rulesText = """
Guess a number 1-100
You will have 5 tries to guess the number
You will be told if the number is lower or higher
"""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rulesLabel.text = rulesText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func guessButtonPressed(_ sender: Any) {
        userGuess = Int(userGuessField.text!)
    }
    
}

