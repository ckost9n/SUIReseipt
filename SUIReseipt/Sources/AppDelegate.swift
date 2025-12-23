//
//  AppDelegate.swift
//  SUI+Receipt
//
//  Created by Konstantin on 04.12.2025.
//

import SwiftUI
import UIKit
 
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FontLoader.loadFonts()
        
        ThemeManager.shared.themes = [
            .light: ThemeStorage.light,
            .dark: ThemeStorage.dark
        ]

        return true
    }
}
