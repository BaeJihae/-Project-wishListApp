//
//  ViewController.swift
//  WishListApp
//
//  Created by 배지해 on 4/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productBrandLabel: UILabel!
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    @IBOutlet weak var addToWishButton: UIButton!
    
    let dataManager = ProductDataManager()
    var coreDataManager = ProductCoreDataManager.shared
    
    var randomid = 0
    var currentProduct: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRandomID()
        setDataAndLabel()
    }
    
    func setRandomID() {
        guard let randomId = (1...100).randomElement() else { return }
        randomid = randomId
    }
    
    func setDataAndLabel() {
        dataManager.getProductData(id: randomid ) { product in
            DispatchQueue.main.async {
                if let product = product {
                    dump(product)
                    self.setData(product)
                }
            }
        }
    }
    
    func setData(_ product: Product) {
        
        currentProduct = product
        
        print("현재의 제품 정보 : \(currentProduct)")
        
        if let url = URL(string: product.thumbnail) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data, error == nil {
                    DispatchQueue.main.async {
                        self.productImageView.image = UIImage(data: data)
                    }
                }
            }.resume()
        }
        productBrandLabel.text = product.brand
        productTitleLabel.text = product.title
        productPriceLabel.text = "\(product.price) 원"
        productDescriptionLabel.text = product.description
    }
    
    @IBAction func addToWishTapped(_ sender: UIButton) {
        guard let product = currentProduct else { return }
        coreDataManager.setProductCoreData(data: product)
    }
    
    @IBAction func nextToItemTapped(_ sender: UIButton) {
        setRandomID()
        setDataAndLabel()
    }
}
