//
//  HomeWireFrame.swift
//  ShoppingList
//
//  Created by Luiz Antônio da Silva Júnior on 23/02/21.
//

import UIKit

class HomeWireFrame: NSObject {
    
    let viewController = HomeViewController(nibName: "Home", bundle: nil)
    let presenter = HomePresenter()
    
    override init() {
        super.init()
        viewController.presenter = presenter
        presenter.viewProtocol = viewController
    }
    
    func present(window: UIWindow) {
        window.rootViewController = viewController
    }
}
