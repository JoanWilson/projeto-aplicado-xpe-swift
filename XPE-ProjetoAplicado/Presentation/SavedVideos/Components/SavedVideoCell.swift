//
//  SavedVideoCell.swift
//  XPE-ProjetoAplicado
//
//  Created by Joan Wilson Oliveira on 25/09/23.
//

import SwiftUI

struct SavedVideoCell: View {
    private var model: VideoCellModel
    
    init(model: VideoCellModel) {
        self.model = model
    }
    
    var body: some View {
        HStack {
            Image(model.imageName)
                .resizable()
                .frame(width: 200, height: 100)
                .scaledToFill()
                .cornerRadius(6)
            VStack(alignment: .leading) {
                Text(model.title)
                    .bold()
                Text(model.subTitle)
                    .lineLimit(nil)
                Spacer()
            }
        }.frame(height: 100)
        
    }
}
