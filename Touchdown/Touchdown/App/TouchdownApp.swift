//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 22/02/24.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
