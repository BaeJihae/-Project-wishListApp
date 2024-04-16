//
//  TableViewController.swift
//  WishListApp
//
//  Created by 배지해 on 4/16/24.
//

import UIKit

class TableViewController: UITableViewController {

    var coreDataManager = ProductCoreDataManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coreDataManager.getProductCoredata().count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "wishItemCell", for: indexPath) as! TableViewCell

        let productDataList = coreDataManager.getProductCoredata()
        let productData = productDataList[indexPath.row]
        
        cell.wishCartBrandLabel.text = productData.brand
        cell.wishCartPriceLabel.text = "$ \(productData.price)"
        cell.wishCartTitleLabel.text = productData.title
        
        if let thumbnail = productData.thumbnail {
            if let url = URL(string: thumbnail) {
                URLSession.shared.dataTask(with: url) { data, response, error in
                    if let data = data, error == nil {
                        DispatchQueue.main.async {
                            cell.wishCartThumnailImageView.image = UIImage(data: data)
                        }
                    }
                }.resume()
            }
        }
        
        cell.onDeleteTapped = {
            self.coreDataManager.deleteCoreData(productData)
            tableView.reloadData()
        }
        
        return cell
    }
}
