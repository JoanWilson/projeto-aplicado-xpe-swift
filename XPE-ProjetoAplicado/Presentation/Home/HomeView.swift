//
//  HomeView.swift
//  XPE-ProjetoAplicado
//
//  Created by Joan Wilson Oliveira on 25/09/23.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    let mockArraySection: [VideoListSection] = VideoListSection.mockArray()
    var body: some View {
        NavigationStack {
            List {
                ForEach(mockArraySection) { index in
                    Section(header: Text(index.sectionTitle)) {
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
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }.searchable(text: $searchText)
    }
}

#Preview {
    HomeView()
}
