//....... popo
//  HomeViewController.swift
//  Easy Gate
//
//  Created by ameer on 7/15/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - Properites
    var index = -1
    var s = true
    var AllAirport = ["Amman" , "Aqaba" , "London" , "Spain" , "Italy" , "Paris"]
    var filterdArray = [String]()
    
    // MARK: - IBOutlet
    @IBOutlet weak var searchbar: UISearchBar!
    @IBOutlet weak var AirportsSearchResulteTableView: UITableView!
    
    // MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
       searchbar.delegate = self
       AirportsSearchResulteTableView.delegate = self
       AirportsSearchResulteTableView.dataSource = self
        self.AirportsSearchResulteTableView.isHidden = true

       filterdArray = AllAirport
    }
    }

// MARK: - extensions
extension HomeViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterdArray = AllAirport
        filterdArray = filterdArray.filter({$0.lowercased().contains(searchText.lowercased())})
        if searchText.count == 0 {
            filterdArray = AllAirport
            self.AirportsSearchResulteTableView.isHidden = true
        } else {
            self.AirportsSearchResulteTableView.isHidden = false

        }
        filterdArray = filterdArray.sorted(by: {$0 < $1})
        AirportsSearchResulteTableView.reloadData()
    }
}

extension HomeViewController : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterdArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  AirportsSearchResulteTableView.frame.size.height / 4.65
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! AirportsSearchResulteControllerTableViewCell
        cell.AirportName.text =  filterdArray[indexPath.row]
       if ( indexPath.row % 2 == 0 ){
            cell.backgroundColor =  UIColor.FirstCellColor }
        else {
            cell.backgroundColor = UIColor.SecondCellColor
        }
       // cell.AirportName.font = UIFont.systemFont(ofSize: 90.scaledWidth()) 
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Maine", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "AirportHome")
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
