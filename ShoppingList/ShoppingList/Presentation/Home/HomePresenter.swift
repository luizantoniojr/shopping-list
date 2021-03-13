//
//  HomePresenter.swift
//  ShoppingList
//
//  Created by Luiz Antônio da Silva Júnior on 24/02/21.
//

import Foundation

protocol HomePresenterProtocol {
    var numberOfRows: Int {get}
    func getSection(index:Int) -> Section
}

class HomePresenter {
    
    let sections = [
        Section(name:"Bebidas", items: [Item(name:"Coca"), Item(name:"Cerveja")]),
        Section(name:"Limpeza", items: [Item(name:"Detergente"), Item(name:"Agua Sanitaria")]),
        Section(name:"Padaria", items: [Item(name:"Pao")]),
        Section(name:"Laticinios", items: [Item(name:"Mussarela"), Item(name:"Presunto")]),
        Section(name:"Cereais", items: [Item(name:"Arroz"), Item(name:"Feijao"),Item(name:"Farinha")]),
    ]

    weak var viewProtocol: HomeViewProtocol?
}

extension HomePresenter: HomePresenterProtocol {
    
    var numberOfRows: Int {
        return sections.count
    }
    
    func getSection(index: Int) -> Section {
        return sections[index]
    }
}
