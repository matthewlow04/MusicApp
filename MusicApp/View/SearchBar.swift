//
//  SearchBar.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-06-30.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack{
            
            VStack(alignment: .leading, spacing: 2){
      
                Text("Seach artists, songs, concerts, albums")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "magnifyingglass")
            })
           
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray))
                .shadow(color: .black.opacity(0.4), radius: 8)
        }
        .padding()
    }
}

#Preview {
    SearchBar()
}
