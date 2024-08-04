//
//  ProfileHeaderView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-06-30.
//

import SwiftUI

struct ProfileHeaderView: View {
    var user: User
    var body: some View {
        VStack(spacing: 20){
            HStack(spacing: 20){
                Circle()
                    .frame(width: 88, height: 88)
                VStack(alignment: .leading, spacing: 12){
                    Text(user.username)
                        .font(Font.system(size: 18, weight: .semibold))
                    HStack{
                        Image(systemName: "link")
                        Text(user.url!)
                            .font(Font.system(size: 12))

                    }
                }
                Spacer()
               
                
            }

            HStack{
                Button("Edit Profile"){
                    
                }
                .foregroundStyle(.foreground)
                .frame(maxWidth: .infinity)
                .padding(12)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                Button("Share Profile"){
                    
                }
                .foregroundStyle(.foreground)
                .frame(maxWidth: .infinity)
                .padding(12)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
        .padding()
        
    
    
    }
}
#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
