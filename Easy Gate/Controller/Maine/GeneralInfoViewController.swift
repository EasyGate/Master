//
//  GeneralInfoViewController.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class GeneralInfoViewController: UIViewController {
    
     // MARK: - IBAction
    @IBAction func Back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)}
    
    @IBAction func Home(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Maine", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "Home")
        self.navigationController?.pushViewController(controller, animated: true)}
    
    // MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
}
}
