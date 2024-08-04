//
//  HomeView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-04.
//

import SwiftUI

struct HomeView: View {
    var user: User
    var body: some View {
        
        VStack(alignment:.leading, spacing: 20){
            Text("Hey, "+user.username+"!")
                .font(.headline)
            
            ScrollView{
                VStack(alignment:.leading, spacing: 20){
    //                HStack{
    //                    Spacer()
    //                    Text("Music App")
    //                        .font(.largeTitle)
    //                    Spacer()
    //                }
                    
                   
                    
                    Text("Featured Content")
                        .modifier(HeaderModifier())
                        .padding(.bottom, 10)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(0..<5) { _ in
                                VStack {
                                    AsyncImage(url: URL(string: "https://e-cdn-images.dzcdn.net/images/cover/586eb9f8e98f13c7be5c1835ae1e168d/500x500-000000-80-0-0.jpg")) { image in
                                        image.resizable()
                                    } placeholder: {
                                        Color.gray.opacity(0.5)
                                    }
                                    .frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                    Text("Featured Album")
                                        .font(.footnote)
                                        .multilineTextAlignment(.center)
                                }
                            }
                        }
                        
                    }.scrollIndicators(.hidden)
                    
                    Text("Stats")
                        .modifier(HeaderModifier())
                    
                    HStack {
                        VStack {
                            Image(systemName: "music.note")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIScreen.screenSize.width / 7, height: UIScreen.screenSize.width / 7)
                            Text("Songs ")
                                .multilineTextAlignment(.center)
                            Text("300")
                                .multilineTextAlignment(.center)
                                .bold()
                        }
                        .frame(width: UIScreen.main.bounds.width / 6)
                        
                        
                        
                        Spacer()
                        VStack {
                            Image(systemName: "play.rectangle.on.rectangle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIScreen.screenSize.width / 7, height: UIScreen.screenSize.width / 7)
                            Text("Albums")
                                .multilineTextAlignment(.center)
                            Text("300")
                                .multilineTextAlignment(.center)
                                .bold()
                        }
                        .frame(width: UIScreen.main.bounds.width / 6)
                        Spacer()
                        VStack {
                            Image(systemName: "person.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIScreen.screenSize.width / 7, height: UIScreen.screenSize.width / 7)
                            Text("Friends")
                                .multilineTextAlignment(.center)
                            Text("300")
                                .multilineTextAlignment(.center)
                                .bold()
                            
                        }
                        .frame(width: UIScreen.main.bounds.width / 6)
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .overlay(RoundedRectangle(cornerRadius: 3 ).stroke(lineWidth: 1)  .foregroundStyle(.gray))
                    
                    VStack(alignment: .leading) {
                                       HStack {
                                           Text("Recently Played")
                                               .font(.headline)
                                           Spacer()
                                           Button(action: {

                                           }) {
                                               Text("View More")
                                                   .font(.footnote)
                                                   .foregroundColor(.blue)
                                           }
                                       }
                                       .padding(.bottom, 10)
                                       
                                       ForEach(0..<3) { _ in
                                           HStack {
                                               AsyncImage(url: URL(string: "https://e-cdn-images.dzcdn.net/images/cover/586eb9f8e98f13c7be5c1835ae1e168d/500x500-000000-80-0-0.jpg")) { image in
                                                   image.resizable()
                                               } placeholder: {
                                                   Color.gray.opacity(0.5)
                                               }
                                               .frame(width: 50, height: 50)
                                               .clipShape(RoundedRectangle(cornerRadius: 10))
                                               
                                               VStack(alignment: .leading) {
                                                   Text("Song Title")
                                                       .font(.headline)
                                                   Text("Artist Name")
                                                       .font(.subheadline)
                                               }
                                               Spacer()
                                           }
                                           .padding(.vertical, 5)
                                       }
                                   }
                }
                
            } .scrollIndicators(.hidden)
        }
     
       
        .padding()
        
    }
}

#Preview {
    HomeView(user: User.MOCK_USERS[0])
}
