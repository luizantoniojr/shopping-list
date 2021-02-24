//
//  HomeWireFrame.swift
//  ShoppingList
//
//  Created by Luiz Antônio da Silva Júnior on 23/02/21.
//

import UIKit

class HomeWireFrame: NSObject {
    
    let viewController = HomeViewController(nibName: "Home", bundle: nil)
    
    override init() {
        super.init()
    }
    
    func present(window: UIWindow) {
        window.rootViewController = viewController
    }
}
