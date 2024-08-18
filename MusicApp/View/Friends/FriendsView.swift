//
//  FriendsView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-18.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20){
            HStack{
                Text("Friends")
                    .modifier(HeaderModifier())
                    .padding(.bottom, 10)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName:"person.badge.plus")
                }
            }
            
            Text("Pinned Friends")
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0..<10){_ in
                        VStack{
                            AsyncImage(url: URL(string: "https://e-cdn-images.dzcdn.net/images/cover/586eb9f8e98f13c7be5c1835ae1e168d/500x500-000000-80-0-0.jpg")) { image in
                                image.resizable()
                            } placeholder: {
                                Color.gray.opacity(0.5)
                            }
                            .scaledToFit()
                         
                            .clipShape(Circle())
                            .containerRelativeFrame(.horizontal, count: 3, spacing: 30)
                            Text("Friend Name")
                                .font(.footnote)
                                .opacity(0.7)

                        }
                    }
                }
            }
            
            Divider()
         
            
            HStack(spacing: 20) {
                Button {
                    
                } label: {
                    Text("Ratings")
                        .padding(5)
                        .overlay(
                            Capsule()
                                .stroke(Color.blue, lineWidth: 1)
                            
                        )
                        .opacity(0.3)
                }
                Button {
                    
                } label: {
                    Text("Concerts")
                        .padding(5)
                        .overlay(
                            Capsule()
                                .stroke(Color.blue, lineWidth: 1)
                        )
                }
                
                
            }
            .font(.subheadline)
            
            ScrollView{
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text("Friend Name")
                            Text("Wants to go to '$UICIDEBOY$ w/ Denzel Curry'")
                                .font(.footnote)
                            Text("Artists: Denzel Curry, $UICIDEBOY$")
                                .font(.footnote)
                            VStack(alignment: .leading){
                                Text("Scotiabank Arena")
                                Text("September 3, 2024")
                                   
                                Text("6:30")
                                  
                            }
                            .font(.footnote)
                            .opacity(0.5)
                            
                        }
                        
                        Spacer()
                        
                        Button {
                        
                        } label: {
                            VStack{
                                Image(systemName: "heart")
                                Text("2")
                                    .font(.footnote)
                            }
                            .padding()
                        }
                    }
                    
                    HStack{
                        VStack(alignment: .leading){
                            Text("Friend Name")
                            Text("Wants to go to 'Childish Gambino'")
                                .font(.footnote)
                            Text("Artists: Childish Gambino")
                                .font(.footnote)
                            VStack(alignment: .leading){
                                Text("Staples Center")
                                Text("September 4, 2024")
                                   
                                Text("7:30")
                                  
                            }
                            .font(.footnote)
                            .opacity(0.5)
                            
                        }
                        
                        Spacer()
                        
                        Button {
                        
                        } label: {
                            VStack{
                                Image(systemName: "heart")
                                Text("3")
                                    .font(.footnote)
                            }
                            .padding()
                        }

                        
                        
                       
                    }
                }
            }
           
            
           
            Spacer()

        }
        .padding()
       
        
    }
}

#Preview {
    FriendsView()
}
