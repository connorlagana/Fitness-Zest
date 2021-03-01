//
//  Fitness_ZestApp.swift
//  Fitness Zest
//
//  Created by Connor Lagana on 3/1/21.
//

import SwiftUI

@main
struct Fitness_ZestApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            StartupView()
        }
    }
}
