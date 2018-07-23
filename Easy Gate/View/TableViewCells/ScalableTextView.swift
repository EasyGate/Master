//
//  mjnyhbg.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class ScalableTextView: UITextView {
    
    @IBInspectable
    public var scalableFontSize: Double = 15.0 {
        didSet {
            font = font?.withSize(scalableFontSize.scaledWidth())
        }
    }
}

