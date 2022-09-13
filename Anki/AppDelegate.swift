//
//  AppDelegate.swift
//  Anki
//
//  Created by Sergei Poluboiarinov on 10.09.2022.
//

import UIKit

let appColor: UIColor = UIColor(red: 255/255, green: 138/255, blue: 216/255, alpha: 0.65)

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        window?.rootViewController = TabBarController()
        
        return true
    }
    
}

