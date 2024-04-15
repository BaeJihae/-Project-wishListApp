//
//  ProductDataManager.swift
//  WishListApp
//
//  Created by 배지해 on 4/15/24.
//

import Foundation

struct ProductDataManager: Codable{
    

    // MARK: - getProductData
    func getProductData(id:Int, completion: @escaping (Product?) -> Void) {
        
        guard let url = URL(string: "https://dummyjson.com/products/\(id)") else {
            print("Error: URL 주소를 불러오는데 실패했습니다.")
            completion(nil)
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        
        session.dataTask(with: request) { data, response, error in
            guard error == nil else {
                print("Error: 실패")
                completion(nil)
                return
            }
            
            guard let response = response as? HTTPURLResponse, (200 ..< 299) ~= response.statusCode else {
                print("Error: 응답이 없습니다.")
                completion(nil)
                return
            }
            
            guard let safeData = data else {
                print("Error: 데이터를 가져오는데 실패하였습니다.")
                completion(nil)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let product = try decoder.decode(Product.self, from: safeData)
                completion(product)
            } catch {
                print("Error: 데이터를 decoder하는데에 실패하였습니다.")
            }
        }.resume()
    }
    
}
