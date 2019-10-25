//
//  bannerTableViewCell.swift
//  FoodEat
//
//  Created by hoanglinh on 10/5/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class bannerTableViewCell: UITableViewCell {

    @IBOutlet weak var fooderCV: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
       self.fooderCV.delegate = self
        self.fooderCV.dataSource = self
    }

  

}
extension bannerTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fooderCollectionViewCell", for: indexPath)as! fooderCollectionViewCell
        
        cell.Imgfooter.image = UIImage(named: "1")
        
        return cell
    }
    
    
}
extension bannerTableViewCell:UICollectionViewDelegateFlowLayout {
    
}
