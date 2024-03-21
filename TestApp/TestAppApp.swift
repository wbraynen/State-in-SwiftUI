//
//  TestAppApp.swift
//  TestApp
//
//  Created by Will on 3/21/24.
//

import SwiftUI

@main
struct TestAppApp: App {
    let appState = AppState()

    var body: some Scene {
        WindowGroup {
            ContentView(state: appState)
        }
    }
}
