//
//  f.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import Foundation
import UIKit

extension Double {
    func scaledWidth() -> CGFloat {
        return CGFloat(self) * Constants.Scale.width
    }
    
    func scaledHeight() -> CGFloat {
        return CGFloat(self) * Constants.Scale.height
    }
    
    func maximumScaling() -> CGFloat {
        return min(scaledWidth(), scaledHeight())
    }
}

extension Int {
    func scaledWidth() -> CGFloat {
        return CGFloat(self) * Constants.Scale.width
    }
    
    func scaledHeight() -> CGFloat {
        return CGFloat(self) * Constants.Scale.height
    }
    
    func expandedHeight() -> CGFloat {
        return CGFloat(self) * Constants.Scale.expandedHeight
    }
}
