//
//  ArtistAlbumView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-17.
//

import SwiftUI

struct ArtistAlbumView: View {
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67616d00001e028da6404284573219a9b1e2f4")) { image in
                image.resizable()
            } placeholder: {
                Color.gray.opacity(0.5)
            }
            .frame(width: 50, height: 50)
            .clipShape((RoundedRectangle(cornerRadius: 5)))
            .padding(.horizontal)
            
            
            
            VStack(alignment: .leading){
                Text("Nectar")
                    .font(.subheadline)
                Text("2020")
                    .font(.footnote)
            }
            Spacer()
                
                    
                    
        }
    }
}

#Preview {
    ArtistAlbumView()
}
