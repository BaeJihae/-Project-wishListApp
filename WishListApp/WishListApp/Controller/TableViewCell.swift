//
//  TableViewCell.swift
//  WishListApp
//
//  Created by 배지해 on 4/16/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var wishCartBrandLabel: UILabel!
    @IBOutlet weak var wishCartTitleLabel: UILabel!
    @IBOutlet weak var wishCartPriceLabel: UILabel!
    @IBOutlet weak var wishCartThumnailImageView: UIImageView!
    @IBOutlet weak var deleteButton: UIButton!
    
    var onDeleteTapped: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setDeleteButtonBorder()
    }
    
    func setDeleteButtonBorder() {
        
        deleteButton.layer.cornerRadius = 3
        deleteButton.clipsToBounds = true
        deleteButton.layer.borderWidth = 1
        deleteButton.layer.borderColor = UIColor.lightGray.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBAction func deleteButtonTapped(_ sender: UIButton) {
        onDeleteTapped?()
    }
}
