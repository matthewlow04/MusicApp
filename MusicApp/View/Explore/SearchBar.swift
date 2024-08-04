//
//  SearchBar.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-06-30.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            HStack{
                
                VStack(alignment: .leading, spacing: 2){
          
                    Text("Seach artists, songs, albums")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "magnifyingglass")
                })
               
            }
            .modifier(SearchBarModifier())
 
            
            HStack{
                Button("Artist"){
                    
                }
                .modifier(SearchFilterModifier())
                
                Button("Song"){
                    
                }
                .modifier(SearchFilterModifier())
                
                Button("Album"){
                    
                }
                .modifier(SearchFilterModifier())
            }

        }
    }
}

#Preview {
    SearchBar()
}
