//
//  TerminalServicesViewController.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class TerminalServicesViewController: UIViewController {
    
    // MARK: - Properites
     var TerminalServicesArray = ["Business Class Lounge" , "Airline Transit Desk" , "Financial Services" , "Smoking Area" , "Duty Free Shops" , "Business Class Lounge" , "Airline Transit Desk" , "Financial Services" , "Smoking Area" , "Duty Free Shops" , "Business Class Lounge" , "Airline Transit Desk" , "Financial Services" , "Smoking Area" , "Duty Free Shops" , "Smokingff"]
    
    // MARK: - IBOutlet
     @IBOutlet weak var TerminalServicesCell: UICollectionView!
    
   // MARK: - IBAction
    @IBAction func Back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func Home(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Maine", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "Home")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
   // MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        TerminalServicesCell.delegate = self
        TerminalServicesCell.dataSource = self
    }
}

// MARK: - extensions
extension TerminalServicesViewController : UICollectionViewDataSource , UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return TerminalServicesArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = TerminalServicesCell.dequeueReusableCell(withReuseIdentifier: "TerminalServicesCollectionViewCell", for: indexPath) as! TerminalServicesCollectionViewCell
        cell.Label.text = TerminalServicesArray[indexPath.row]
        cell.imge.image = UIImage(named: "Car")
       // cell.textfiled.font = UIFont.systemFont(ofSize: 47.scaledWidth())
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: collectionView.frame.size.width/3.25 , height: collectionView.frame.size.height / 5.5)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(collectionView.frame.size.height * 0.05,
                                collectionView.frame.size.width * 0.005,
                                collectionView.frame.size.height * 0.3,
                                collectionView.frame.size.width * 0.005)}

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return collectionView.frame.size.height * 0.06
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, maximumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return  collectionView.frame.size.width * 0.001
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Maine", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "AllCompanies")
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
