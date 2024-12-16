//
//  ContentView.swift
//  New Tab Bar Sample
//
//  Created by eiji.shirakazu on 2024/12/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("First View", systemImage: "1.circle") {
                FirstView()
            }
            Tab("Second View", systemImage: "2.circle") {
                SecondView()
            }
            TabSection("Collection") {
                Tab("Third View", systemImage: "3.circle") {
                    ThirdView()
                }
                Tab("Forth View", systemImage: "4.circle") {
                    ForthView()
                }
            }
            .sectionActions {
                Button("New Tab", systemImage: "plus.square") {
                    // ...
                }
            }
            Tab(role: .search) {
                SearchView()
            }
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    ContentView()
        // 画面下部に表示したい場合は.compact、画面上部に表示したい場合は.regularに設定
        .environment(\.horizontalSizeClass, .regular)
}
