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
            .init(sectionTitle: "Fundamentos Básicos", cells: [
                .init(imageName: "Fundamentos", title: "Reserva", subTitle: "Como criar a sua reserva de emergência?"),
                .init(imageName: "Fundamentos", title: "Reserva", subTitle: "Como criar a sua reserva de emergência?"),
                .init(imageName: "Fundamentos", title: "Reserva", subTitle: "Como criar a sua reserva de emergência?"),
            ]),
            .init(sectionTitle: "Planejamento Pessoal", cells: [
                .init(imageName: "Pessoal", title: "Objetivos pessoais", subTitle: "Vai fazer faculdade? Financiar uma casa?"),
                .init(imageName: "Pessoal", title: "Objetivos pessoais", subTitle: "Vai fazer faculdade? Financiar uma casa?"),
                .init(imageName: "Pessoal", title: "Objetivos pessoais", subTitle: "Vai fazer faculdade? Financiar uma casa?"),
            ]),
            .init(sectionTitle: "Montando minha carteira", cells: [
                .init(imageName: "Carteira", title: "Tesouro Direto", subTitle: "Aprendar a investir no tesouro direto"),
                .init(imageName: "Carteira", title: "Tesouro Direto", subTitle: "Aprendar a investir no tesouro direto"),
                .init(imageName: "Carteira", title: "Tesouro Direto", subTitle: "Aprendar a investir no tesouro direto"),
            ])
        ]
    }
}
