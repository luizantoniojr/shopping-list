//
//  AppDelegate.swift
//  ShoppingList
//
//  Created by Luiz Antônio da Silva Júnior on 23/02/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var mainWireFrame = HomeWireFrame()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        window.frame = UIScreen.main.bounds
        mainWireFrame.present(window: window)
        self.window = window
        
        return true
    }
}
