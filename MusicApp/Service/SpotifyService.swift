//
//  SpotifyService.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-06-23.
//

import Foundation

class SpotifyService: ObservableObject{
    
    @Published var accessToken: String = ""
    
    init() {
        Task{
            await connectToSpotify()
        }
    }
    
    func connectToSpotify() async{
        
        let url = URL(string: "https://accounts.spotify.com/api/token")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let authString = "\(clientID):\(clientSecret)".data(using: .utf8)!.base64EncodedString()
        request.setValue("Basic \(authString)", forHTTPHeaderField: "Authorization")
        let bodyString = "grant_type=client_credentials"
        request.httpBody = bodyString.data(using: .utf8)
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request)

            if let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                   let accessTokenJson = json["access_token"] as? String {
                    DispatchQueue.main.async {
                        self.accessToken = accessTokenJson
                        
                    }
                } else {
                    print("Error: Access token not found in the response")
                }
            } else {
                print("Error: Invalid response")
            }
        } catch {
            print("Error: \(error.localizedDescription)")
        }
    }
    
    
    func searchPlaylist(playlistLink: String, accessToken: String) async -> [Track]?{
        let url = URL(string: playlistLink)!
        var tracks = [Track]()

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("Bearer \(accessToken)", forHTTPHeaderField: "Authorization")
        
 
        do {
            let (data,response) = try await URLSession.shared.data(for: request)
            
            if let responseString = String(data: data, encoding: .utf8) {
                           print("Response Data: \(responseString)")
                       }
            
            if let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) {
                let playlistResults = try JSONDecoder().decode(Playlist.self, from: data)
                let playlistTracks = playlistResults.tracks.items
                
                for track in playlistTracks {
                    print(track.track.name)
                    tracks.append(track.track)
                    return tracks
                }
                
            }else{
                print("Error: Invalid response")
            }
            
        } catch {
            print("Error: \(error)")
            return nil
        }
        return nil
    }
    
    func searchTrack(songName: String, accessToken: String) async -> [Track]?{
        
        var tracks: [Track] = []
        let url = URL(string: "https://api.spotify.com/v1/search?type=track&q=\(songName)")!
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        request.setValue("Bearer \(accessToken)", forHTTPHeaderField: "Authorization")
        
        do {
            let (data,response) = try await URLSession.shared.data(for: request)
            
            if let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) {
                let searchResults = try JSONDecoder().decode(SearchResult.self, from: data)
                
                let songs = searchResults.tracks.items
                
                for song in songs {
                    tracks.append(song)
//                    print(song.album.images[0].url)
                }

                return tracks
                
            }else{
                print("Error: Invalid response")
                return nil

            }

        } catch {
            print("Error: \(error)")
            return nil
        }
    }
    
    func getRecentlyPlayed() async -> [Track]?{
        
        var tracks: [Track] = []
        let url = URL(string: "https://api.spotify.com/v1/me/player/recently-played")
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        request.setValue("Bearer \(accessToken)", forHTTPHeaderField: "Authorization")
        
        do {
            let (data,response) = try await URLSession.shared.data(for: request)
            
            if let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) {
                let searchResults = try JSONDecoder().decode(RecentlyPlayedContainer.self, from: data)
                
                let songs = searchResults.items
                
                for song in songs {
                    tracks.append(song.track)
//                    print(song.album.images[0].url)
                }
                
                return tracks
            }else{
                print("Error: Invalid response")
                if let responseString = String(data: data, encoding: .utf8) {
                   print("Response body: \(responseString)")
               }
                return nil

            }

        } catch {
            print("Error: \(error)")
            return nil
        }
    }
    
}

