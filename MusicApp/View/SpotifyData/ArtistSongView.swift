//
//  ArtistSongView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-17.
//

import SwiftUI

struct ArtistSongView: View {
    //    var song: Track
    @State var rating: Double
    
    var body: some View {
        HStack(spacing: 10) {
            Text("Excursions")
                .font(.subheadline)
            
            Spacer()
            
            VStack (spacing: 7){
                HStack(spacing: 2) {
                    ForEach(0..<5) { index in
                        StarView(
                            filled: Double(index) < floor(rating),
                            half: Double(index) == floor(rating) && rating.truncatingRemainder(dividingBy: 1) > 0
                        ) {
                            let currentRating = rating
                            if Double(index) < floor(currentRating) {
                                rating = (currentRating == Double(index) + 1) ? Double(index) + 0.5 : Double(index) + 1
                            } else if Double(index) == floor(currentRating) && rating.truncatingRemainder(dividingBy: 1) > 0 {
                                rating = floor(currentRating)
                            } else {
                                rating = Double(index) + 1
                            }
                        }
                    }
                }
                .font(.subheadline)
                HStack(spacing: 1){
                    Text("3.5")
                    Image(systemName: "star.fill")
                        .foregroundColor(.accentColor)
                    
                    
                }
            }
            .font(.footnote)
            .fontDesign(.rounded)
            
        }
    }
  
}

#Preview {
    AlbumSongView(number: 1, rating: 4.5)
}
