//
//  User.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-06-22.
//

import Foundation

struct User: Identifiable, Hashable, Codable{
    
    let id: String
    var username: String
    var profileImageUrl: String?
    var firstName: String?
    var lastName: String?
    var bio: String?
    let email: String
}
