//
//  CrocodileApp.swift
//  Crocodile
//
//  Created by Buba on 10.02.2023.
//

import SwiftUI

@main
struct CrocodileApp: App {
    @StateObject private var timerManager = TimerManager()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(timerManager)
        }
    }
}
