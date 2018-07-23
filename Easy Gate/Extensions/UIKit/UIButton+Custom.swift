//
//  u.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//


import UIKit

extension UIButton {
    
    func setScaled(imageAssetIdentifier identifier: UIImage.AssetIdentifier) {
        let image = UIImage(assetIdentifier: identifier)
        setImage(image?.scaled(), for: UIControlState.normal)
    }
    
}
