//
//  AppDelegate.swift
//  UITestExample
//
//  Created by Ociel Lerma on 1/21/19.
//  Copyright © 2019 Ociel Lerma. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        setupUI()
        
        return true
    }

    //Creating the Initial Root View Controller
    private func setupUI(){
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let vc = LoginViewController()
        let navController = UINavigationController(rootViewController: vc)
        window?.rootViewController = navController
    }

}

