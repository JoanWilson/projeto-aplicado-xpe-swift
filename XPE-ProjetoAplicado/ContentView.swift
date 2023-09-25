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
            Text("teste")
                .tabItem {
                    Label("Início", systemImage: "house")
                }
            Text("Saved")
                .tabItem {
                    Label("Salvos", systemImage: "book")
                }
        }.tint(.orange)
    }
}

#Preview {
    ContentView()
}
