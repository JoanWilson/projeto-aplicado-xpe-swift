//
//  VideoListSection.swift
//  XPE-ProjetoAplicado
//
//  Created by Joan Wilson Oliveira on 25/09/23.
//

import Foundation

struct VideoListSection: Identifiable {
    var id = UUID()
    var sectionTitle: String
    var cells: [VideoCellModel]
    
    static func mockArray() -> [VideoListSection] {
        [
            .init(sectionTitle: "Economia Doméstica", cells: []),
            .init(sectionTitle: "Investimentos", cells: []),
            .init(sectionTitle: "Dívidas", cells: [])
        ]
    }
}

struct VideoCellModel {
    var title: String
    var subTitle: String
}
