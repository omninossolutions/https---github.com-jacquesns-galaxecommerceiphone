//
//  OrderTableViewCell.swift
//  galax
//
//  Created by Jarvics on 05/08/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class OrderTableViewCell: UITableViewCell {

    @IBOutlet weak var OrderIdLbl: UILabel!
    @IBOutlet weak var datelbl: UILabel!
    @IBOutlet weak var OrderPlaceLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
