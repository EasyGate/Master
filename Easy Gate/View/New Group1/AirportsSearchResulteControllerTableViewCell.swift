//
//  AirportsSearchResulteControllerTableViewCell.swift
//  Easy Gate
//
//  Created by ameer on 7/16/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class AirportsSearchResulteControllerTableViewCell: UITableViewCell {
   
    // MARK: - IBOutle
    @IBOutlet weak var AirportName: UILabel!
    
 // MARK: - ViewLifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
       self.selectionStyle = .none
    }

}
