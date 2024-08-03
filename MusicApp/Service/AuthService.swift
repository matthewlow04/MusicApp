//
//  AuthService.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-06-22.
//

import Foundation
import FirebaseAuth
import Firebase
import FirebaseFirestoreSwift

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    static let shared = AuthService()
    
    init(){
     
        Task{
            try await loadUserData()
        }
        
    }
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do{
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            try await loadUserData()
        }catch{
            print("Debug, failed to login with error \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser( email: String, password: String, username: String) async throws {
        do{
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
  
            await uploadUserData(uid: result.user.uid, username: username, email: email)

        }catch{
            print("Debug, failed to register user with error \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func loadUserData() async throws{
        self.userSession = Auth.auth().currentUser

        guard let currentUid = self.userSession?.uid else { print("No User Data"); return }
        let snapshot = try await Firestore.firestore().collection("users").document(currentUid).getDocument()
     
        self.currentUser = try? snapshot.data(as: User.self)
    }
    
    func signOut(){
        
        //signout on firebase server
        try? Auth.auth().signOut()
        
        //set usersession to nil for the front end
        self.userSession = nil
        self.currentUser = nil
    }
    
    //don't need throws on upload data
    @MainActor
    private func uploadUserData(uid: String, username: String, email: String) async {
        let user = User(id: uid, username: username, email: username, url: "")
        self.currentUser = user
        //transforms user into data dictionary
        guard let encodedUser = try? Firestore.Encoder().encode(user) else { return }
    
        try? await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
    }
}
