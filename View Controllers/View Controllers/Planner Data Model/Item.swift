//
//  Item.swift
//  IUT Mobile
//
//  Created by Zafar on 3/5/19.
//

import Foundation
import UserNotifications
import RealmSwift

class Item: Object{
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    @objc dynamic var shouldRemind: Bool = false
    @objc dynamic var whenRemind: Date?
    @objc dynamic var itemID: Int = 0
    
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}

