//
//  categoriesCollectionViewCell.swift
//  FoodEat
//
//  Created by hoanglinh on 10/6/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class categoriesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var Foodname: UILabel!
    @IBOutlet weak var Foodimage: UIImageView!
    
    func bindData (prod:Categories){
        Foodname.text = prod.Name
        Foodimage.image = UIImage(named: prod.Imgcate)  
    }
}
