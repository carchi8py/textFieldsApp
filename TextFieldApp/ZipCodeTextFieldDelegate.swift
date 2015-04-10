//
//  ZipCodeTextFieldDelegate.swift
//  TextFieldApp
//
//  Created by Chris Archibald on 4/9/15.
//  Copyright (c) 2015 Chris Archibald. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        var newLength = countElements(textField.text) + countElements(string) - range.length
        return newLength <= 5
    }
    
}
