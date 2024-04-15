//
//  ViewController.swift
//  WishListApp
//
//  Created by 배지해 on 4/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    let dataManager = ProductDataManager()
    var coreDataManager = ProductCoreDataManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setData()
    }
    
    func setData() {
        
        guard let randomId = (1...100).randomElement() else { return }
        dataManager.getProductData(id: randomId ) { product in
            DispatchQueue.main.async {
                if let product = product {
                    dump(product)
                    self.coreDataManager.setProductCoreData(data: product)
                }
            }
        }
    }
}

