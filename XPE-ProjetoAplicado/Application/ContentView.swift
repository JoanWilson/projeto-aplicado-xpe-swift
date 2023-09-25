//
//  ContentView.swift
//  XPE-ProjetoAplicado
//
//  Created by Joan Wilson Oliveira on 25/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Início", systemImage: "house")
                }
            SavedVideosView()
                .tabItem {
                    Label("Salvos", systemImage: "book")
                }
        }.tint(.green)
    }
}

#Preview {
    ContentView()
}
