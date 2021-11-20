//
//  ecommerce_american_football_swiftApp.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 12/11/21.
//

import SwiftUI

@main
struct ecommerce_american_football_swiftApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
