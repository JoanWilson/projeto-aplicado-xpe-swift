//
//  HomeView.swift
//  XPE-ProjetoAplicado
//
//  Created by Joan Wilson Oliveira on 25/09/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        let titlesList: [String] = [
            "Economia Doméstica",
            "Investimento",
            "Resolução de dividas"
        ]
        
        NavigationStack {
            List {
                ForEach(1...3, id: \.self) { index in
                    Section(header: Text("Economia Domestica")) {
                        ScrollView(.horizontal) {
                            HStack(spacing: 30) {
                                ForEach(1...10, id: \.self) { _ in
                                    VideoListCell()
                                }
                            }
                        }
                    }
                }
            }
            .listStyle(.plain)
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    HomeView()
}
