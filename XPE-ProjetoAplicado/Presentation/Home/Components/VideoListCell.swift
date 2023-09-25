//
//  VideoListCell.swift
//  XPE-ProjetoAplicado
//
//  Created by Joan Wilson Oliveira on 25/09/23.
//

import SwiftUI

struct VideoListCell: View {
    private var model: VideoCellModel
    
    init(model: VideoCellModel) {
        self.model = model
    }
    
    var body: some View {
        VStack {
            Image(model.imageName)
                .resizable()
                .frame(width: 200, height: 100)
                .scaledToFill()
                .cornerRadius(6)
            HStack {
                VStack(alignment: .leading) {
                    Text(model.title)
                        .bold()
                    Text(model.subTitle)
                }
                Spacer()
                VStack {
                    Button {
                        print("Favoritar")
                    } label: {
                        Image(systemName: "bookmark")
                            .resizable()
                            .frame(width: 20, height: 30)
                    }
                    Spacer()
                }.padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                
            }.frame(width: 200)
        }
        
    }
}

#Preview {
    VideoListCell(model: VideoCellModel(imageName: "Fundamentos", title: "Fundamentos", subTitle: "Fundamentos"))
}
