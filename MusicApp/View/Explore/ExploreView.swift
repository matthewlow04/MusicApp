//
//  ExploreView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-04.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        VStack{
            SearchBar()
                .padding(.bottom, 20)
            ScrollView{
                VStack(alignment: .leading, spacing: 20){
                    Group{
                        HStack{
                            Image(systemName: "flame.fill")
                            Text("New Albums")
                            
                        }
                        .modifier(HeaderModifier())
                        
                        
                        TabView {
                            ForEach(0...5, id: \.self) { _ in
                                
                                VStack{
                                    HStack{
                                        VStack{
                                            Text("The Low End Theory")
                                                .font(.headline)
                                            Text("A Tribe Called Quest")
                                        }
                                        
                                        Spacer()
                                        
                                        Text("9")
                                            .font(.system(size: 30))
                                        
                                    }
                                    
                            
                                    AsyncImage(url: URL(string: "https://assets.pippa.io/shows/63613a3a0759420012e3e0a8/1702062526431-dbd0c236a15c3b13bea73817cc870495.jpeg")) { image in
                                        image.resizable()
                                    } placeholder: {
                                        Color.gray.opacity(0.5)
                                    }
                                    
                                    .aspectRatio(contentMode: .fit)
                                   
                                   
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                   
                                }
                                
                                .padding(.horizontal)
                            }
                            
                            
                        }
                        .tabViewStyle(PageTabViewStyle())
                        .frame(height: (UIScreen.main.bounds.width))
                    }
                    Group{
                        HStack{
                            Image(systemName: "lightbulb.fill")
                            Text("Recommended Tracks")
                            
                            Spacer()
                            
                            Button("View More") {}
                                .font(.footnote)
                        }
                        .modifier(HeaderModifier())
                        
                        ScrollView(.horizontal){
                            HStack(spacing: 20){
                                ForEach(0...5, id: \.self){_ in
                                    AsyncImage(url: URL(string: "https://assets.pippa.io/shows/63613a3a0759420012e3e0a8/1702062526431-dbd0c236a15c3b13bea73817cc870495.jpeg")) { image in
                                        image.resizable()
                                    } placeholder: {
                                        Color.gray.opacity(0.5)
                                    }
                                    .frame(width: (UIScreen.screenSize.width-80)/3 , height: (UIScreen.screenSize.width-80)/3 )
                                    .clipShape(RoundedRectangle(cornerRadius: 3))
                                }
                            }
                        }.scrollIndicators(.hidden)
                        
                    }
                    
                    Group{
                        HStack{
                            Image(systemName: "star.fill")
                            Text("High Rated")
                            
                            Spacer()
                            
                            Button("View More") {}
                                .font(.footnote)
                        }
                        .modifier(HeaderModifier())
                        
                        ScrollView(.horizontal){
                            HStack(spacing: 20){
                                ForEach(0...5, id: \.self){_ in
                                    AsyncImage(url: URL(string: "https://assets.pippa.io/shows/63613a3a0759420012e3e0a8/1702062526431-dbd0c236a15c3b13bea73817cc870495.jpeg")) { image in
                                        image.resizable()
                                    } placeholder: {
                                        Color.gray.opacity(0.5)
                                    }
                                    .frame(width: (UIScreen.screenSize.width-80)/3 , height: (UIScreen.screenSize.width-80)/3 )
                                    .clipShape(RoundedRectangle(cornerRadius: 3))
                                }
                            }
                        }.scrollIndicators(.hidden)
                        
                    }
                    
                    Group{
                        HStack{
                            Image(systemName: "crown.fill")
                            Text("Developer Picks")
                            
                            Spacer()
                            
                            Button("View More") {}
                                .font(.footnote)
                        }
                        .modifier(HeaderModifier())
                        
                        LazyVGrid(columns: [.init(),.init(), .init()], content: {
                            ForEach(0...5, id: \.self){_ in
                                AsyncImage(url: URL(string: "https://assets.pippa.io/shows/63613a3a0759420012e3e0a8/1702062526431-dbd0c236a15c3b13bea73817cc870495.jpeg")) { image in
                                    image.resizable()
                                } placeholder: {
                                    Color.gray.opacity(0.5)
                                }
                                .frame(width: (UIScreen.screenSize.width-80)/3 , height: (UIScreen.screenSize.width-80)/3 )
                                .clipShape(RoundedRectangle(cornerRadius: 3))
                            }
                        })
                        
                    }
                    
                }
                
                
                
                
                
                
            }.scrollIndicators(.hidden)
        }
        .padding()
    }
}

#Preview {
    ExploreView()
}
