//
//  File.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit
import DropDown

class AppearenceManager {
    
    static func setupUI() {
        DropDown.appearance().textColor = UIColor.battleshipGrey
        DropDown.appearance().textFont = UIFont.systemFont(ofSize: 20.scaledWidth())
        DropDown.appearance().backgroundColor = UIColor.white
        DropDown.appearance().selectionBackgroundColor = UIColor(white: 0.975, alpha: 1.0)
        DropDown.appearance().cellHeight = 55.scaledHeight()
        DropDown.appearance().shadowRadius = 3.0
        DropDown.appearance().shadowOffset = CGSize(width: 0.5, height: 1.0)
    }
}
