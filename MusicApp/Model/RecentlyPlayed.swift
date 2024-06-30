//
//  RecentlyPlayed.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-06-30.
//

import Foundation

struct RecentlyPlayedContainer: Codable{
    var items: [PlayHistory]
}

struct PlayHistory: Codable{
    var track: Track
    var playedAt: String
    
    
    enum CodingKeys: String, CodingKey {
        case track
        case playedAt = "played_at"
    }
}


