//
//  AppDelegate.swift
//  AutosizingTableCellsStudy
//
//  Created by Daniel R on 8/7/15.
//  Copyright (c) 2015 Dan Ramteke Consulting Inc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var nav: UINavigationController?
    var root: ViewController?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let window = UIWindow(frame: UIScreen.mainScreen().bounds)
        let root = ViewController()
        let nav = UINavigationController(rootViewController: root)
        window.rootViewController = nav
        window.makeKeyAndVisible()
        
        self.root = root
        self.nav = nav
        self.window = window
        return true
    }
}

