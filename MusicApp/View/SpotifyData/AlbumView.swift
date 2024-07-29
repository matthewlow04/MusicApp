//
//  AlbumView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-07-27.
//

import SwiftUI

struct AlbumView: View {
    var body: some View {
        
        VStack(spacing: 10){
            AsyncImage(url: URL(string: "https://assets.pippa.io/shows/63613a3a0759420012e3e0a8/1702062526431-dbd0c236a15c3b13bea73817cc870495.jpeg")) { image in
                image.resizable()
            } placeholder: {
                Color.gray.opacity(0.5)
            }
            .frame(width: 200, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            
            Text("The Low End Theory")
                .modifier(TitleModifier())
            
            Text("A Tribe Called Quest")
                .font(.subheadline)
                .opacity(0.5)
            
            HStack{
                Text("14 Tracks")
                Text("-")
                Text("1991")
            }
            .font(.caption)
            .opacity(0.5)
           
            HStack{
                VStack(alignment: .leading, spacing: 10){
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundColor(.accentColor)
                        Text("4.4/5")
                    }
                    
                    Text("Average Rating")
                }
                Spacer()
             
                VStack(alignment: .leading, spacing: 10){
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("4.6/5")
                    }
                    
                    Text("Your Rating")
                }
                .padding(.horizontal)
               
            }
            .font(.subheadline)
        
        
            HStack{
                Button(action: {

                }) {
                    Text("Rate Album")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10) 
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 1)
                        )
                }

                Button(action: {
         
                }) {
                    Image(systemName: "heart")
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 1)
                        )
                }
               
            }
            .padding(.vertical)
            
            Divider()
                .padding()
            
            
           
            
            HStack{
                Text("Song List")
                Spacer()
                Button("Update"){}
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 1)
                    )
            }
          
            
            ScrollView{
                VStack(spacing:5){
                    AlbumSongView(number: 1, rating: 0.4)
                    AlbumSongView(number: 2, rating: 0.4)
                    AlbumSongView(number: 3, rating: 0.4)
                    AlbumSongView(number: 4, rating: 0.4)
                    AlbumSongView(number: 5, rating: 0.4)
                }
            }
            
        }
        .padding()
        .fontDesign(.rounded)
        
    }
}

#Preview {
    AlbumView()
}
