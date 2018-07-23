//
//  e.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//


import UIKit

// MARK: - UIStoryboard extension
extension UIStoryboard {
    
    /// Match UIStoryboard with it's `Identifier` name so we don't relay on unsafe strings distributed
    /// in the code base.
    ///
    enum Identifier: String {
        case test = "Test"
    }
    
    /**
     Generates a UIStoryboard from a Identifier enum
     
     - Returns: an optional `UIStoryboard`
     */
    convenience init?(identifier: Identifier) {
        self.init(name: identifier.rawValue, bundle: nil)
    }
}

