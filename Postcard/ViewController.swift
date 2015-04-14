//
//  ViewController.swift
//  Postcard
//
//  Created by Kyle Raley on 4/13/15.
//  Copyright (c) 2015 Kyle Raley. All rights reserved.
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
        messageLabel.hidden = false; //un hidding when button clicks
        messageLabel.text = enterMessageTextField.text;
        messageLabel.textColor = UIColor.redColor();
        
        nameLabel.hidden = false;
        nameLabel.text = enterNameTextField.text;
        nameLabel.textColor = UIColor.blueColor();
        
        enterNameTextField.text = "";
        enterNameTextField.resignFirstResponder();
        
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder();
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
    }

}

