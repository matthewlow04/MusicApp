//
//  Track.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-06-22.
//

import Foundation

struct Track: Codable, Identifiable {
    let album: Album
    let artists: [Artist]
    let available_markets: [String]
    let disc_number: Int
    let duration_ms: Int
    let explicit: Bool
    let external_ids: [String: String]
    let external_urls: ExternalURLs
    let href: String
    let id: String
    let is_local: Bool
    let name: String
    let popularity: Int
    let preview_url: String?
    var rating: Double?
    let track_number: Int
    let type: String
    let uri: String
}

struct SearchResult: Codable {
    let tracks: TrackData
}

struct TrackData: Codable {
    let href: String
    let items: [Track]
}
