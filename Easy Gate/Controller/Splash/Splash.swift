//
//  Splash.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class Splash: UIViewController {
//    func applicationDidFinishLaunching() -> (UIApplication,*);application
//{
//    NSThread sleepForTimeInterval:5.0
//    }
    func moveToMainScreen() {
        let sb = UIStoryboard(name: "Maine", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "Home")
        self.navigationController?.present(controller, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

   
}
