//
//  RootView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-03.
//

import SwiftUI

struct RootView: View {
    @StateObject var viewModel = RootViewModel()
    @StateObject var registrationViewModel = RegistrationViewModel()
    var body: some View {
        Group{
            if $viewModel.userSession == nil{
                LoginView()
                    .environmentObject(registrationViewModel)
            } else if let currentUser = viewModel.currentUser {
                TabView{
                    HomeView(user: currentUser)
                        .tabItem{Label("Home", systemImage: "house.fill")}
                    ExploreView()
                        .tabItem{Label("Explore", systemImage: "magnifyingglass")}
                    FriendsView()
                        .tabItem{Label("Friends", systemImage: "person.3.fill")}
                    ProfileView()
                        .tabItem{Label("Profile", systemImage: "person.fill")}
                    
                }
               
               
            }
        }
    }
}

#Preview {
    RootView()
}
