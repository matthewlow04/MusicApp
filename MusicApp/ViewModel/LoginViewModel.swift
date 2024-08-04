//
//  LoginViewModel.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-03.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
