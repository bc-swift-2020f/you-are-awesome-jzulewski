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
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "Whne the Genius Bar Needs Help, They Call You!",
                        "Fabulous? That's You!",
                        "You've Got The Design Skills of Jony Ive"]
        
        var newMessageNumbber: Int
        repeat {
            newMessageNumbber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumbber
        messageNumber = newMessageNumbber
        messageLabel.text = messages[messageNumber]
        
    
        
        
        
        var newImageNumber: Int
        repeat {
            newImageNumber =  Int.random(in: 0...totalNumberOfImages)

        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        

        
        
    }
    
}
