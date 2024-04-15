//
//  Product.swift
//  WishListApp
//
//  Created by 배지해 on 4/15/24.
//

import Foundation

// MARK: - Product
struct Product: Codable {
    let id: Int
    let title, description: String
    let price: Int
    let discountPercentage: Double
    let brand, category: String
    let thumbnail: String
    let images: [String]
}
