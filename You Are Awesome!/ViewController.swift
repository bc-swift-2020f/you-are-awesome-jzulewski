//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by John Zulewski on 8/29/20.
//  Copyright © 2020 John Zulewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🥶 viewDidLoad has run!")
        messageLabel.text = "Fabulous! That's you!"
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You Are Awesome!"
        print("🥶 The message button was pressed!")
    }
}

