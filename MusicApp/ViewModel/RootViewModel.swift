//
//  RootViewModel.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-03.
//

import Foundation
import Firebase
import Combine

class RootViewModel: ObservableObject{
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init(){
        setUpSubscribers()
    }
    
    //listens to authservice published
    func setUpSubscribers() {
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)
        
        service.$currentUser.sink { [weak self] userSession in
            self?.currentUser = userSession
        }
        .store(in: &cancellables)
    }
    
}
