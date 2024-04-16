//
//  ProductData+CoreDataProperties.swift
//  WishListApp
//
//  Created by 배지해 on 4/16/24.
//
//

import Foundation
import CoreData


extension ProductData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ProductData> {
        return NSFetchRequest<ProductData>(entityName: "ProductData")
    }

    @NSManaged public var brand: String?
    @NSManaged public var category: String?
    @NSManaged public var discountPercentage: Double
    @NSManaged public var id: Int64
    @NSManaged public var price: Int64
    @NSManaged public var productDescription: String?
    @NSManaged public var thumbnail: String?
    @NSManaged public var title: String?

}

extension ProductData : Identifiable {

}
