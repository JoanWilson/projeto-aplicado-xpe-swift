//
//  VideoListCell.swift
//  XPE-ProjetoAplicado
//
//  Created by Joan Wilson Oliveira on 25/09/23.
//

import SwiftUI

struct VideoListCell: View {
    var body: some View {
        VStack {
            Image("videoStatic")
                .resizable()
                .frame(width: 200, height: 100)
                .scaledToFill()
                .cornerRadius(6)
            HStack {
                VStack(alignment: .leading) {
                    Text("Nome do video")
                        .bold()
                    Text("subTitle")
                }
                Spacer()
                Button {
                    print("Favoritar")
                } label: {
                    Image(systemName: "bookmark")
                        .resizable()
                        .frame(width: 20, height: 30)
                }
            }.frame(width: 200)
        }
        
    }
}

#Preview {
    VideoListCell()
}
