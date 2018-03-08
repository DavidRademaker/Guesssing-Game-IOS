//
//  ViewController.swift
//  Guessing Game IOS
//
//  Created by David Rademaker on 3/8/18.
//  Copyright © 2018 David Rademaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomNumber = Int(arc4random_uniform(100))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

