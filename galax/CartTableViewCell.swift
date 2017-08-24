//
//  CartTableViewCell.swift
//  galax
//
//  Created by Jarvics on 05/08/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var CountLbl: UILabel!
    @IBOutlet weak var MinusBtn: UIButton!
    @IBOutlet weak var PlusBtn: UIButton!
    @IBOutlet weak var MoneyLbl: UILabel!
    @IBOutlet weak var ImageViw: UIImageView!
    @IBOutlet weak var NameLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
