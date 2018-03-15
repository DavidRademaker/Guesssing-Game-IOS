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
    @IBOutlet weak var submitButton: UIButton!
    
    var randomNumber = Int(arc4random_uniform(100))
    var userGuess: Int!
    var guesses = 5
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
    
    func checkGuess() {
        if guesses != 1 {
            if userGuess < randomNumber {
                userFeedbackLabel.text = "Too low, guess again"
                userGuessField.text = ""
                guesses -= 1
            }
            else if   userGuess > randomNumber {
                userFeedbackLabel.text = " Too high, guess again"
                userGuessField.text = ""
                guesses -= 1
            }
            else if userGuess == randomNumber {
                userFeedbackLabel.text = "You got it"
                userGuessField.text = ""
            }
            
        }
        else {
            endgame()
            userGuessField.text = ""    }
    
    }
    
    
    
    func endgame() {
        userFeedbackLabel.text = "The game is over the number was \(randomNumber)"
       submitButton.setTitle("Play again", for: .normal)
        if submitButton.titleLabel?.text! == "Play again" {
            guesses = 5
            randomNumber = Int(arc4random_uniform(100))
            submitButton.setTitle("Submit", for: .normal)
            userFeedbackLabel.text = ""
        }
    }
    
    @IBAction func guessButtonPressed(_ sender: Any) {
        userGuess = Int(userGuessField.text!)
        checkGuess()
    }
}


