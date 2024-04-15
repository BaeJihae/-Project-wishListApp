//
//  PhotoURL+CoreDataProperties.swift
//  WishListApp
//
//  Created by 배지해 on 4/15/24.
//
//

import Foundation
import CoreData


extension PhotoURL {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PhotoURL> {
        return NSFetchRequest<PhotoURL>(entityName: "PhotoURL")
    }

    @NSManaged public var images: String?
    @NSManaged public var id: Int64
    @NSManaged public var photoURLs: ProductData?

}

extension PhotoURL : Identifiable {

}
