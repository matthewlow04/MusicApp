//
//  Album.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-06-22.
//

import Foundation

struct Album: Codable, Identifiable {
    let album_type: String
    let artists: [Artist]
    let available_markets: [String]
    let external_urls: ExternalURLs
    let href: String
    let id: String
    let images: [Image]
    let name: String
    let release_date: String
    let release_date_precision: String
    let total_tracks: Int
    let type: String
    let uri: String
}

struct Image: Codable {
    let height: Int
    let url: String
    let width: Int
}
