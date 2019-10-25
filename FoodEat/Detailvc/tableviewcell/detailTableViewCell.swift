//
//  detailTableViewCell.swift
//  FoodEat
//
//  Created by hoanglinh on 10/11/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class detailTableViewCell: UITableViewCell {

    @IBOutlet weak var Detailcollection: UICollectionView!
//    var mang:[Categories] = []
    override func awakeFromNib() {
        super.awakeFromNib()
      self.Detailcollection.dataSource = self
    self.Detailcollection.delegate = self
        
        
    
    }

}
extension detailTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else if section == 1 {
            return 1
        }
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewCollectionViewCell", for: indexPath)as! ViewCollectionViewCell
        
        return cell
    }
    
    
}
extension detailTableViewCell : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let sizeItem = collectionView.bounds.size
        
        return CGSize(width: sizeItem.width, height: sizeItem.height - 100)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
