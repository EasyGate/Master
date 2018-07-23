//
//  AirportsSearchResulteControllerTableViewCell.swift
//  Easy Gate
//
//  Created by ameer on 7/16/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class AirportsSearchResulteControllerTableViewCell: UITableViewCell {
    @IBOutlet weak var AirportName: UILabel!
 
    override func awakeFromNib() {
        super.awakeFromNib()
       self.selectionStyle = .none
    }

}
