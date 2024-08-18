//
//  ArtistView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-17.
//

import SwiftUI

struct ArtistView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 20){
                VStack(spacing: 10){
                    AsyncImage(url: URL(string: "https://i.scdn.co/image/ab676161000051744111c95b5f430c3265c7304b")) { image in
                        image.resizable()
                    } placeholder: {
                        Color.gray.opacity(0.5)
                    }
                    .frame(width: 150, height: 150)
                    .clipShape((RoundedRectangle(cornerRadius: 5)))
                    
                    Text("Joji")
                        .modifier(TitleModifier())
                    
                    Text("Viral Pop")
                        .font(.subheadline)
                        .opacity(0.5)
                    HStack{
                        Text("Popularity: 78")
                    }
                    .font(.caption)
                    .opacity(0.5)
       
                    Divider()
                        .padding()
                }
                VStack(spacing: 10){
                    HStack{
                        Text("Albums")
                            .bold()
                        Spacer()
                        Button("View More"){
                            
                        }
                    }

                    VStack(spacing:5){
                        ArtistAlbumView()
                        Divider()
                        ArtistAlbumView()
                        Divider()
                        ArtistAlbumView()
                        Divider()
                        ArtistAlbumView()
                    }

                }
                VStack(spacing: 10){
                    HStack{
                        Text("Popular Songs")
                            .bold()
                        Spacer()
                        Button("View More"){
                            
                        }
                    }
                
                    VStack(spacing:5){
                        ArtistSongView(rating: 3.4)
                        ArtistSongView(rating: 2.4)
                        ArtistSongView(rating: 4.4)
                        ArtistSongView(rating: 3.4)
                        ArtistSongView(rating: 3.4)
                    }
                }
 
              
                
            }
            .padding()
            .fontDesign(.rounded)
        }
       
        
    }
}

#Preview {
    ArtistView()
}
