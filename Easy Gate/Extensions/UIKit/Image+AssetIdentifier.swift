//
//  i.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

extension UIImage {
    
    enum AssetIdentifier: String {
        case erase = "erase"
        case drop = "drop"
        case calendar = "calendarIcon"
        
    }
    
    /**
     Generates a UIImage from a AssetIdentifier enum
     - Returns: a non nil UIImage instance.
     */
    convenience init?(assetIdentifier: AssetIdentifier) {
        self.init(named: assetIdentifier.rawValue)
    }
}
