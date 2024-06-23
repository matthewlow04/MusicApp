//
//  ContentView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-06-22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var spotifyService = SpotifyService()
    var body: some View {
        VStack {
            Text("Spotify Access Token:")
            Text(spotifyService.accessToken)
        }
        
//        Button("Playlist"){
//            Task{
//                let tracks = await spotifyService.searchPlaylist(playlistLink: "https://api.spotify.com/v1/playlists/3qy7vGugIfZZI76D91djF0?si=1650e8d296f24404", accessToken: spotifyService.accessToken)
//            
//               
//            }
//           
//        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
