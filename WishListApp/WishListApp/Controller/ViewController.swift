//
//  ViewController.swift
//  WishListApp
//
//  Created by 배지해 on 4/15/24.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var productBrandLabel: UILabel!
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    @IBOutlet weak var addToWishButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    let dataManager = ProductDataManager()
    var coreDataManager = ProductCoreDataManager.shared
    
    var randomid = 0
    var currentProduct: Product?
    
    var images = [UIImage]()
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRandomID()
        setDataAndLabel()
        setRefreshControl()
        
        imageScrollView.delegate = self
        
        addContentScrollView()
        setPageControl()
    }
    

    // MARK: - setDataAndLabel
    
    func setRandomID() {
        guard let randomId = (1...100).randomElement() else { return }
        randomid = randomId
    }
    
    func setPriceLabel(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        guard let priceString = numberFormatter.string(from: NSNumber(value: price)) else { return "" }
        return "$ " + priceString
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
        productBrandLabel.text = product.brand
        productTitleLabel.text = product.title
        productPriceLabel.text = setPriceLabel(price: product.price)
        productDescriptionLabel.text = product.description
        
        images.removeAll()
        imageScrollView.subviews.forEach { $0.removeFromSuperview() } // 기존 이미지 뷰 제거
        
        for imageURL in product.images {
            if let url = URL(string: imageURL) {
                URLSession.shared.dataTask(with: url) { data, response, error in
                    if let data = data, error == nil {
                        DispatchQueue.main.async {
                            if let image = UIImage(data: data) {
                                self.images.append(image)
                                self.addContentScrollView()
                                self.setPageControl()
                            }
                        }
                    }
                }.resume()
            }
        }
    }
    
    // MARK: - PageControl & scrollView
    
    func addContentScrollView() {
        var xOffset: CGFloat = 0
        for image in images {
            let imageView = UIImageView(image: image)
            imageView.frame = CGRect(x: xOffset, y: 0, width: imageScrollView.bounds.width, height: imageScrollView.bounds.height)
            imageView.contentMode = .scaleAspectFit
            imageScrollView.addSubview(imageView)
            xOffset += imageScrollView.bounds.width
        }
        imageScrollView.contentSize = CGSize(width: xOffset, height: imageScrollView.bounds.height)
        
    }
    
    func setPageControl() {
        pageControl.numberOfPages = images.count
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let value = scrollView.contentOffset.x/scrollView.frame.size.width
        pageControl.currentPage = Int(round(value))
    }
    
    // MARK: - refreshControl
    
    func setRefreshControl() {
        scrollView.refreshControl = UIRefreshControl()
        scrollView.refreshControl?.attributedTitle = NSAttributedString(string: "Pull to refresh")
        scrollView.refreshControl?.addTarget(self, action: #selector(self.refresh(_:)), for: .valueChanged)
    }
    
    @objc func refresh(_ sender: AnyObject) {
        
        DispatchQueue.main.asyncAfter(deadline: .now()+1){
            self.setRandomID()
            self.setDataAndLabel()
            self.scrollView.refreshControl?.endRefreshing()
        }
    }
    
    
    // MARK: - addToWishButton
    
    @IBAction func addToWishTapped(_ sender: UIButton) {
        guard let product = currentProduct else { return }
        coreDataManager.setProductCoreData(data: product)
    }
    
    
    // MARK: - nextToItem
    
    @IBAction func nextToItemTapped(_ sender: UIButton) {
        setRandomID()
        setDataAndLabel()
    }
}
