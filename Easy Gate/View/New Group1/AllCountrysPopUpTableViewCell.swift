//
//  AllAirportPopUpTableViewCell.swift
//  Easy Gate
//
//  Created by ameer on 7/24/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class AllCountrysPopUpTableViewCell: UITableViewCell {

    @IBOutlet weak var CountryName: ScalableLabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none

    }

   

}
