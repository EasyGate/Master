//
//  AllCompaniesViewController.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class AllCompaniesViewController: UIViewController {
    
    // MARK: - IBOutlet
      @IBOutlet weak var AllCompaniesCollections: UICollectionView!
    
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
 }
}

// MARK: - extensions
extension AllCompaniesViewController : UICollectionViewDataSource , UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = AllCompaniesCollections.dequeueReusableCell(withReuseIdentifier: "AllCompaniesCollectionViewCell", for: indexPath) as! AllCompaniesCollectionViewCell
            cell.Imge.image = UIImage(named: "images")
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: collectionView.frame.size.width/2.3, height: collectionView.frame.size.height / 5)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(collectionView.frame.size.height * 0.1,
                                collectionView.frame.size.width * 0.03,
                                collectionView.frame.size.height * 0.5,
                                collectionView.frame.size.width * 0.03)
    }
    
        func collectionView(_ collectionView: UICollectionView,
                            layout collectionViewLayout: UICollectionViewLayout,
                            minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return collectionView.frame.size.height * 0.13
     }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return collectionView.frame.size.width * 0.03
        }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Maine", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "GeneralAviation")
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
