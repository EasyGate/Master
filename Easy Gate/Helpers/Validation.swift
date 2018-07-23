//
//  w.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//


import UIKit

class Validation {
    
    static func validate(textField: UITextField) -> UITextField? {
        if textField.isRequired == .enabled {
            if (textField.text?.isEmpty)! {
                textField.backgroundColor = .alertRed
                textField.attributedPlaceholder = NSAttributedString(string: "Required!", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
            } else {
                textField.backgroundColor = .white
                textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
            }
        }
        return textField
    }
}

