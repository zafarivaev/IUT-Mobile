//
//  food.swift
//  IUT Mobile
//
//  Created by Zafar on 2/18/19.
//

import Foundation

class Food {
    var imageName = ""
    var description = ""
    var moreInfo = ""
    var price = ""
    
    init (imageName: String, description: String, moreInfo: String, price: String) {
        self.imageName = imageName
        self.description = description
        self.moreInfo = moreInfo
        self.price = price
    }
    
}


