//
//  PopUpViewController.swift
//  Easy Gate
//
//  Created by ameer on 7/24/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {
    
    // MARK: - Properites
 var AllAirport = ["Amman" , "Aqaba" , "London" , "Spain" , "Italy" , "Paris" ,"Amman" , "Aqaba" , "London" , "Spain" , "Italy" , "Paris" ,"Amman" , "Aqaba" , "London" , "Spain" , "Italy" , "Paris"]
    
    // MARK: - IBOutlet
     @IBOutlet weak var AllCountrysTableView: UITableView!
    
    // MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        AllCountrysTableView.dataSource = self
        AllCountrysTableView.delegate = self
    }
}

// MARK: - extensions
extension PopUpViewController : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AllAirport.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  AllCountrysTableView.frame.size.height / 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! AllCountrysPopUpTableViewCell
       cell.CountryName.text = AllAirport[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Maine", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "Home")
        self.navigationController?.pushViewController(controller, animated: true)
        var select = indexPath
        print(select)
    }
}
