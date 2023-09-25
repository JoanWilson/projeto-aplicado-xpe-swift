//
//  VideoCellModel.swift
//  XPE-ProjetoAplicado
//
//  Created by Joan Wilson Oliveira on 25/09/23.
//

import Foundation

struct VideoCellModel: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var subTitle: String
    
    static func mockArray() -> [VideoCellModel] {
        [
            .init(imageName: "", title: "Nome do video", subTitle: "Subtitle"),
            .init(imageName: "", title: "Nome do video", subTitle: "Subtitle"),
            .init(imageName: "", title: "Nome do video", subTitle: "Subtitle"),
            .init(imageName: "", title: "Nome do video", subTitle: "Subtitle"),
        ]
    }
}
