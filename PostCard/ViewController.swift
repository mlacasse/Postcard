//
//  ViewController.swift
//  PostCard
//
//  Created by Marc Lacasse on 2014-11-05.
//  Copyright (c) 2014 Marc Lacasse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.textColor = UIColor.redColor()
        messageLabel.text = enterMessageTextField.text
        messageLabel.hidden = false

        nameLabel.textColor = UIColor.blueColor()
        nameLabel.text = enterNameTextField.text
        nameLabel.hidden = false

        nameLabel.text = ""
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

