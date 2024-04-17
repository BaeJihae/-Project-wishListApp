//
//  ProductCoreDataManager.swift
//  WishListApp
//
//  Created by 배지해 on 4/15/24.
//

import Foundation
import UIKit
import CoreData

struct ProductCoreDataManager {
    
    // 데이터 매니저
    static let shared = ProductCoreDataManager()
    private init() {}
    
    // 앱 델리게이트
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    // 임시저장소
    lazy var context = appDelegate?.persistentContainer.viewContext
    
    // 엔터티 이름 (코어 데이터에 저장된 객체)
    let modelName: String = "ProductData"
    
    
    // MARK: - setFunc
    // TodoData를 생성하는 메서드
    mutating func setProductCoreData(data: Product) {
        
        guard let context = context else { return }
        
        let fetchRequest: NSFetchRequest<ProductData> = ProductData.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "id == %d", data.id)
        
        do {
            let results = try context.fetch(fetchRequest)
            let newData: ProductData
            
            if results.isEmpty {
                // 새로운 객체 생성
                guard let entity = NSEntityDescription.entity(forEntityName: modelName, in: context) else { return }
                newData = NSManagedObject(entity: entity, insertInto: context) as! ProductData
            } else {
                // 기존 객체 업데이트
                newData = results.first!
            }
            
            // 속성 값 설정
            newData.id = Int64(data.id)
            newData.title = data.title
            newData.productDescription = data.description
            newData.price = Int64(data.price)
            newData.brand = data.brand
            newData.category = data.category
            newData.discountPercentage = data.discountPercentage
            newData.thumbnail = data.thumbnail
            
            // 변경 사항 저장
            try context.save()
            
            print(" 데이터가 저장되었습니다.")
        } catch {
            print("Error updating ProductData: \(error)")
        }
    }
    
    
    // MARK: - getFunc
    mutating func getProductCoredata() -> [ProductData] {
        var ProductList = [ProductData]()
        
        guard let context = context else {
            return ProductList
        }
        
        let fetchRequest: NSFetchRequest<ProductData> = ProductData.fetchRequest()
        
        let sortDescriptor = NSSortDescriptor(key: "id", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        do {
            ProductList = try context.fetch(fetchRequest)
        } catch {
            print("Error fetching todo list data: \(error)")
        }
        
        return ProductList
    }
    
    
    // MARK: - deleteFunc
    mutating func deleteCoreData(_ productData: ProductData) {
        guard let context = context else {
            return
        }
        
        context.delete(productData)
        
        do {
            try context.save()
        } catch {
            print("Error deleting todo data: \(error)")
        }
    }
}
