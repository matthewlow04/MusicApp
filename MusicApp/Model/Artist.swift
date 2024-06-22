//
//  Artist.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-06-22.
//

import Foundation

struct Artist: Codable {
    let external_urls: ExternalURLs
    let href: String
    let id: String
    let name: String
    let type: String
    let uri: String
}

struct ExternalURLs: Codable {
    let spotify: String
}
