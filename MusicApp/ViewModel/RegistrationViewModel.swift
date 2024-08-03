//
//  RegistrationViewModel.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-03.
//

import Foundation
import RegexBuilder

class RegistrationViewModel: ObservableObject{
    @Published var username = ""
    @Published var email = "" {
        didSet{
            if oldValue != email{
                validEmail = validEmailAddress()
                print("Changed")
            }
            
        }
    }
    @Published var validEmail = false
    @Published var password = ""
    
    @MainActor
    func createUser() async throws{
        try await AuthService.shared.createUser(email: email, password: password, username: username)
        
        username = ""
        email = ""
        password = ""
    }
    
    func validEmailAddress() -> Bool{
        let pattern = Regex {
            OneOrMore(.word)
            "@"
            OneOrMore(.word)
            "."
            Repeat(2...3){
                .word
            }
        }
        
        if (email.wholeMatch(of: pattern) != nil) {
            return true
        }
        
        return false
        
    }
}
