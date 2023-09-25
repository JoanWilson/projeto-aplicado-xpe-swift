//
//  SavedVideosView.swift
//  XPE-ProjetoAplicado
//
//  Created by Joan Wilson Oliveira on 25/09/23.
//

import SwiftUI

struct SavedVideosView: View {
    @State private var searchText = ""
    let mockArrayVideo: [VideoCellModel] = [
        .init(imageName: "Fundamentos", title: "Reserva", subTitle: "Como criar a sua reserva de emergência?"),
        .init(imageName: "Pessoal", title: "Objetivos", subTitle: "Vai fazer faculdade? Financiar?"),
        .init(imageName: "Carteira", title: "Tesouro Direto", subTitle: "Aprendar a investir no tesouro direto"),
    ]
    var body: some View {
        NavigationStack {
            List {
                VStack(alignment: .leading, spacing: 30) {
                    ForEach(mockArrayVideo) { index in
                        SavedVideoCell(model: index)
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
    ContentView()
}
