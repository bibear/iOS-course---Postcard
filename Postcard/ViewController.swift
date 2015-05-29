//
//  ViewController.swift
//  Postcard
//
//  Created by Bruno on 28/05/2015.
//  Copyright (c) 2015 Bruno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var fullMessageLabel: UILabel!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailAction(sender: UIButton) {
        if(nameTextField.text != "") {
            messageLabel.hidden = false
            fullMessageLabel.hidden = false
            var destinataire = nameTextField.text
            messageLabel.text = "To : " + destinataire
            nameTextField.text = ""
            nameTextField.resignFirstResponder()
            fullMessageLabel.text = messageTextField.text
            messageTextField.text = "";
            
            sendMailButton.setTitle("Message envoyé", forState: UIControlState.Normal)
        } else {
            
        }
    }

}

