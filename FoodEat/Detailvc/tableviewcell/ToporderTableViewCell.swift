//
//  ToporderTableViewCell.swift
//  FoodEat
//
//  Created by hoanglinh on 10/11/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class ToporderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var TopImage: UIImageView!
    @IBOutlet weak var TopName: UILabel!
    @IBOutlet weak var TopDescript: UILabel!
    @IBOutlet weak var TopPrices: UILabel!
    @IBOutlet weak var TopAddress: UILabel!
    @IBOutlet weak var TopDiscount: UILabel!
    @IBOutlet weak var TopQty: UITextField!
    override func awakeFromNib() {
       
        super.awakeFromNib()
        // Initialization code
       
    }

    @IBAction func ClickedSub(_ sender: Any) {
        
    }
    @IBAction func ClickedAdd(_ sender: Any) {
        
    }
}
