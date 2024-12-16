//
//  EntryPoint.swift
//  New Tab Bar Sample
//
//  Created by eiji.shirakazu on 2024/12/16.
//

import SwiftUI

@main
struct EntryPoint: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.horizontalSizeClass, .regular)
        }
    }
}
