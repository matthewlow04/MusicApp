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
    let url: String?
}

extension User{
    static var MOCK_USERS: [User] = [
        .init(id: "asdfasdfaf", username: "matthewlow", profileImageUrl: "https://i.scdn.co/image/ab67616d0000b2731e8fd05e38f85c0a52bf017f", bio: "awesome", email: "matthew7419@gmail.com", url: "spotify.com")
    ]
}
