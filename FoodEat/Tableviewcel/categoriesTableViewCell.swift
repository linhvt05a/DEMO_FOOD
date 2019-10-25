//
//  categoriesTableViewCell.swift
//  FoodEat
//
//  Created by hoanglinh on 10/5/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class categoriesTableViewCell: UITableViewCell {
    @IBOutlet weak var catecollection: UICollectionView!
    var mang:[Categories] = []
    var didgotosplitVC: ((_ categories:Categories)->Void)! = nil
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.catecollection.delegate = (self as UICollectionViewDelegate)
        self.catecollection.dataSource = (self as UICollectionViewDataSource)
        getData()
    }

    func getData(){
        let Url = URL(string: "http://172.16.5.142:3000/getCategories")
        var request = URLRequest(url: Url!)
        request.httpMethod = "GET"
        //task
        let task = URLSession.shared.dataTask(with: request) { (dt:Data?, res:URLResponse?, err:Error?) in
            
            if dt == nil {
                print("Data is null")
            }else {
                print("Data get successfull!!!")
                do{
                    let json = try JSONDecoder.init().decode([Categories].self, from: dt!)
                    print(json)
                    self.mang = json
                    DispatchQueue.main.async {
                        self.catecollection.reloadData()
                    }
                    
                }
                catch{
                    print("Json not complete")
                }
            }
            
        }
        task.resume()
    }

}
extension categoriesTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return mang.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoriesCollectionViewCell", for: indexPath)as! categoriesCollectionViewCell
                cell.Foodname.text = mang[indexPath.row].Name
        if let imgUrl = URL(string: mang[indexPath.row].Imgcate){
            DispatchQueue.global().async {
                do{
                    let data = try? Data(contentsOf: imgUrl)
                    if let data = data {
                        let image = UIImage(data: data)
                        DispatchQueue.main.async {
                            cell.Foodimage.image = image
                        }
                    }
                }
                
                
            }
            
        }
        return cell
    }
    
    
}
extension categoriesTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 170)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //go to splitVC
        if self.didgotosplitVC != nil {
            self.didgotosplitVC!(mang[indexPath.item])
        }
        
        
    }
    
}
//struct Categories:Decodable {
//    
//    var Id : String!
//    var Imgcate : String!
//    var Name : String!
//    
//}
