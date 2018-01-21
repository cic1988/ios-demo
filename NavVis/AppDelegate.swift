//
//  AppDelegate.swift
//  NavVis
//

import UIKit
import Fabric
import Crashlytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Setup Fabric - Crashlytics & Answers
        Fabric.with([Crashlytics.self])
        Fabric.with([Answers.self])

        return true
    }

}

