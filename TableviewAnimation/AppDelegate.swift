//
//  AppDelegate.swift
//  TableviewAnimation
//
//  Created by Sushant Hegde on 17/07/18.
//  Copyright © 2018 Sushant Hegde. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.setRootViewControler()
        return true
    }

    
    func setRootViewControler(){
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let welcomeScreen = storyboard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        let nc = UINavigationController(rootViewController: welcomeScreen)
        self.window?.rootViewController = nc
        self.window?.makeKeyAndVisible()
        
    }



}

