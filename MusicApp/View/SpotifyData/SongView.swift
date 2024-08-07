//
//  SongView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-07-27.
//

import SwiftUI

struct SongView: View {
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: "https://e-cdn-images.dzcdn.net/images/cover/586eb9f8e98f13c7be5c1835ae1e168d/500x500-000000-80-0-0.jpg")) { image in
                image.resizable()
            } placeholder: {
                Color.gray.opacity(0.5)
            }
            .frame(width: 100, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .padding(.trailing)
            
            VStack{
                HStack{
                    Text("How Sweet")
                        .font(.title2)
                        .bold()
                    Spacer()
                    Text("2:17")
                        .font(.subheadline)
                        .opacity(0.5)
                        .font(Font.system(size: 18))
                }
                HStack{
                    Text("How Sweet")
                        .font(.footnote)
                        .opacity(0.5)
                    Spacer()
                    Text("K-pop, HipHop")
                        .font(.footnote)
                }
                HStack{
                    VStack(alignment : .leading){
                        Text("Newjeans")
                            .font(.footnote)
                            .opacity(0.5)
                        Text("Community Rating: 7.5")
                            .font(.footnote)
                        Text("Your rating: 6")
                            .font(.footnote)
                    }
                    Spacer()
                }
               
               
            }
        }
        .padding()
        .fontDesign(.rounded)
        
        
    }
}

#Preview {
    SongView()
}
