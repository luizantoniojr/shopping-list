//
//  Item.swift
//  ShoppingList
//
//  Created by Luiz Antônio da Silva Júnior on 24/02/21.
//

import Foundation

class Item : NSObject, NSCoding {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }

    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
    }
    
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as! String
    }
}
