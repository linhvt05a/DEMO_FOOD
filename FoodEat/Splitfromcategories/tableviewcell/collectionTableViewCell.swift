//
//  collectionTableViewCell.swift
//  FoodEat
//
//  Created by hoanglinh on 10/10/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class collectionTableViewCell: UITableViewCell {

    @IBOutlet weak var lblcollection: UILabel!
    @IBOutlet weak var collectionList: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.collectionList.dataSource = self
        self.collectionList.delegate = self
    }


}

extension collectionTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colectionCollectionViewCell", for: indexPath) as! colectionCollectionViewCell
        cell.lblcollect.text = "Mung le lon giam so luong lon ban tren 5 nguoi"
        cell.imgCollect.image = UIImage(named: "4")
        
        return cell
    }
    
    
}
extension collectionTableViewCell:UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
        let sizeforitem = contentView.bounds.size
        return CGSize(width: sizeforitem.width , height: sizeforitem.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.section)
        print(indexPath.item)
    }
}
