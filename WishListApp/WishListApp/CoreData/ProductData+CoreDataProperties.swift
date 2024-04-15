//
//  ProductData+CoreDataProperties.swift
//  WishListApp
//
//  Created by 배지해 on 4/15/24.
//
//

import Foundation
import CoreData


extension ProductData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ProductData> {
        return NSFetchRequest<ProductData>(entityName: "ProductData")
    }

    @NSManaged public var id: Int64
    @NSManaged public var title: String?
    @NSManaged public var productDescription: String?
    @NSManaged public var price: Int64
    @NSManaged public var discountPercentage: Double
    @NSManaged public var brand: String?
    @NSManaged public var category: String?
    @NSManaged public var thumbnail: String?
    @NSManaged public var photoURLs: NSSet?

}

// MARK: Generated accessors for photoURLs
extension ProductData {

    @objc(addPhotoURLsObject:)
    @NSManaged public func addToPhotoURLs(_ value: PhotoURL)

    @objc(removePhotoURLsObject:)
    @NSManaged public func removeFromPhotoURLs(_ value: PhotoURL)

    @objc(addPhotoURLs:)
    @NSManaged public func addToPhotoURLs(_ values: NSSet)

    @objc(removePhotoURLs:)
    @NSManaged public func removeFromPhotoURLs(_ values: NSSet)

}

extension ProductData : Identifiable {

}
