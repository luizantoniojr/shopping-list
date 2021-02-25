//
//  Section.swift
//  ShoppingList
//
//  Created by Luiz Antônio da Silva Júnior on 24/02/21.
//

import Foundation

class Section: NSObject, NSCoding {
    
    let name: String
    let items: [Item]
    
    init(name: String, items: [Item]) {
        self.name = name
        self.items = items
    }

    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(items, forKey: "items")
    }
    
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as! String
        items = coder.decodeObject(forKey: "items") as! [Item]
    }
}
