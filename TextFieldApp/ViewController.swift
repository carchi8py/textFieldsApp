//
//  ViewController.swift
//  TextFieldApp
//
//  Created by Chris Archibald on 4/9/15.
//  Copyright (c) 2015 Chris Archibald. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // Outlets
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var moneyField: UITextField!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textSwitch: UISwitch!
    
    let zipDelegate = ZipCodeTextFieldDelegate()
    let moneyDelegate = moneyTextFieldDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.zipField.delegate = zipDelegate
        self.moneyField.delegate = moneyDelegate
        self.textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
    {
        if (textSwitch.on) {
            textField.text = ""
            return false
        }
        return true
    }
}

