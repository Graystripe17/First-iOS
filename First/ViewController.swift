//
//  ViewController.swift
//  First
//
//  Created by Winston Van on 9/19/16.
//  Copyright © 2016 Winston Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var instruction: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the textfields user inputs through delegate callbacks
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        instruction.text = textField.text
    }
    
    // MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        nameTextField.text = "Woohoo!"
    }


}

