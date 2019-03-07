//
//  Category.swift
//  IUT Mobile
//
//  Created by Zafar on 3/5/19.
//

import Foundation
import RealmSwift

class Category: Object{
    @objc dynamic var name: String = ""
    @objc dynamic var color: String = ""
    let items = List<Item>()
}

