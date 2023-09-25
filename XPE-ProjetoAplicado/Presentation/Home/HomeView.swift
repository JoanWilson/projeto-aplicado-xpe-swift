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
                                ForEach(index.cells) { cell in
                                    VideoListCell(model: cell)
                                }
                            }
                        }
                    }
                }
            }
            .listStyle(.plain)
            .scrollIndicators(.hidden)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("")
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image("logoDark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 40, alignment: .leading)
                }
            }
            
        }.searchable(text: $searchText)
    }
}

#Preview {
    HomeView()
}
