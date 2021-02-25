//
//  SectionRepository.swift
//  ShoppingList
//
//  Created by Luiz Antônio da Silva Júnior on 24/02/21.
//

import Foundation

class SectionRepository {
    
    let dao = Dao(fileName: String(describing: Section.self))

    func save(_ sections:[Section]) throws {
        try dao.save(sections)
    }
    
    func get() throws ->  [Section] {
        return try dao.get() as! [Section]
    }
    
    func delete(at index: Int) throws {
        try dao.delete(at: index)
    }
}
