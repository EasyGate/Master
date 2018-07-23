//
//  File.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//


import UIKit

extension UINavigationController {
    func pushFromBottom(controller: UIViewController) {
        let presentAnimation = CATransition()
        presentAnimation.duration = 0.35
        presentAnimation.type = kCATransitionMoveIn
        presentAnimation.subtype = kCATransitionFromTop
        presentAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        view.layer.add(presentAnimation, forKey: "presentation")
        pushViewController(controller, animated: false)
    }
}
