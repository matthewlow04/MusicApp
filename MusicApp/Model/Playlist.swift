//
//  Playlist.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-06-22.
//

import Foundation

struct Playlist: Codable{
    let description: String
    let id: String
    let tracks: PlaylistTrack
}

struct PlaylistTrack: Codable{
    let items: [PlaylistTrackItem]
}

struct PlaylistTrackItem: Codable{
    let track: Track
}

