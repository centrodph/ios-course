//
//  MercadoLibreApiDao.swift
//  MercadoLibre
//
//  Created by iOS on 14/5/18.
//  Copyright © 2018 iOS. All rights reserved.
//

import Foundation
import Alamofire

class MercadoLibreApiDao {

    func getProducts( query: String, completion:@escaping (([Producto])->Void)){
        
        let url = "https://api.mercadolibre.com/sites/MLA/search"
        let params = ["q":query]
        
        Alamofire
            .request(url, parameters: params)
            .responseJSON { (response) in
                if let dictionary = response.result.value as? [String:AnyObject] {
                 
                    if let dictionaryArray = dictionary["results"] as? [[String:AnyObject]]{
                        print(dictionaryArray.count)
                        
                        var productsArray: [Producto] = []
                        
                        for d in dictionaryArray{
                            let p = Producto(dictionary: d)
                            productsArray.append(p)
                        }
                        
                        completion(productsArray)
                    }
            
                }
            }
        
        
    }
}
