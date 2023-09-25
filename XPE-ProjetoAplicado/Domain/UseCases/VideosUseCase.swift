//
//  VideosUseCase.swift
//  XPE-ProjetoAplicado
//
//  Created by Joan Wilson Oliveira on 25/09/23.
//

import Foundation

protocol VideosUseCase {
    func saveVideoInSavedVideos()
    func removeVideoFromSavedVideos()
    func deleteAllSavedVideos()
}
