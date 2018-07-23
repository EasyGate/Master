//
//  PassengerTerminalViewController.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class PassengerTerminalViewController: UIViewController {
    
     // MARK: - IBOutlet
     @IBOutlet weak var PassengerTerminalCollection: UICollectionView!
    
   // MARK: - IBOutlet
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
        PassengerTerminalCollection.delegate = self
        PassengerTerminalCollection.dataSource = self
    }
}
    // MARK: - extensions

extension PassengerTerminalViewController : UICollectionViewDataSource , UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = PassengerTerminalCollection.dequeueReusableCell(withReuseIdentifier: "PassengerTerminalsCollectionViewCell", for: indexPath) as! PassengerTerminalsCollectionViewCell
       cell.TerminalImge.image = UIImage(named: "Car")
        cell.TerminalName.text = "TerminalTefff"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width/4, height: collectionView.frame.size.height / 7)}
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
       return UIEdgeInsetsMake(collectionView.frame.size.height * 0.05,
                                collectionView.frame.size.width * 0.05,
                                collectionView.frame.size.height * 0.9,
                                collectionView.frame.size.width * 0.02)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return collectionView.frame.size.height * 0.15
 }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Maine", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "TerminalServicesD")
        //self.navigationController?.pushViewController(controller, animated: true)
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
