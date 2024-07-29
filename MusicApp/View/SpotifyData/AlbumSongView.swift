//
//  AlbumSongView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-07-28.
//

import SwiftUI

struct AlbumSongView: View {
    var number: Int
    //    var song: Track
    @State var rating: Double
    
    var body: some View {
        HStack(spacing: 10) {
            Text("\(number)")
                .opacity(0.5)
            VStack(alignment: .leading, spacing: 7){
                Text("Excursions")
                Text("A Tribe Called Quest")
                    .opacity(0.5)
                
            }
            
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
