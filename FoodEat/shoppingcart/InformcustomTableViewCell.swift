//
//  InformcustomTableViewCell.swift
//  FoodEat
//
//  Created by hoanglinh on 10/7/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class InformcustomTableViewCell: UITableViewCell {
    @IBOutlet weak var tfmessage: UITextField!
    @IBOutlet weak var lblCustomerinform: UILabel!
    @IBOutlet weak var recivedName: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var address: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
