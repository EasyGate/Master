//
//  ff.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class ScalableLabel: UILabel {
    @IBInspectable
    public var scalableFontSize: Double = 15.0 {
        didSet {
            font = font.withSize(scalableFontSize.scaledWidth())
        }
    }
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
