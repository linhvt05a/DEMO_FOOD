//
//  ShoppingCartViewController.swift
//  FoodEat
//
//  Created by hoanglinh on 10/23/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class ShoppingCartViewController: UIViewController {

    @IBOutlet weak var ShoppCart: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
extension ShoppingCartViewController:UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CartAddressTableViewCell", for: indexPath)as! CartAddressTableViewCell
            
            return cell
        }else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductsListTableViewCell", for: indexPath)as! ProductsListTableViewCell
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "confirmOrdersTableViewCell", for: indexPath)as! confirmOrdersTableViewCell
            
            return cell
        }
        return UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 200
        }else if indexPath.section == 1 {
            return 300
        }else {
            return 50
        }
    }
}
