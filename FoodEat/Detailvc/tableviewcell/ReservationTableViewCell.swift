//
//  ReservationTableViewCell.swift
//  FoodEat
//
//  Created by hoanglinh on 10/23/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class ReservationTableViewCell: UITableViewCell {
//Outlet
    @IBOutlet weak var FoodName: UILabel!
    @IBOutlet weak var FoodAddress: UILabel!
    @IBOutlet weak var FoodCates: UILabel!
    @IBOutlet weak var FoodPrices: UILabel!
    @IBOutlet weak var FoodLocation: UILabel!
    @IBOutlet weak var Reservate: UIButton!
//icon for reservation
    @IBOutlet weak var PinLocate: UIImageView!
    @IBOutlet weak var CointDolar: UIImageView!
    @IBOutlet weak var ForkForCates: UIImageView!
    @IBOutlet weak var MappAdd: UIImageView!
    @IBOutlet weak var RestaurantName: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//reservation:- Booking
    @IBAction func BookingForEat(_ sender: UIButton) {
        print("Please login and back again")
    }
}
