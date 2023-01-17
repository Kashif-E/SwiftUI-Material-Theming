//
//  SwiftUIThemingExampleApp.swift
//  SwiftUIThemingExample
//
//  Created by Kashif.Mehmood on 18/01/2023.
//

import SwiftUI

@main
struct SwiftUIThemingExampleApp: App {
    
    @StateObject var themes = ThemeManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()// This will allow us to manage the current applied theme
                .environmentObject(themes)
                //This will help us to access the members of current theme
                .environmentObject(themes.current)
        }
    }
}
