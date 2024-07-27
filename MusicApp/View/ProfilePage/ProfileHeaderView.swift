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
        HStack(spacing: 20){
            Circle()
                .frame(width: 88, height: 88)
            VStack(alignment: .leading, spacing: 12){
                Text(user.username)
                    .font(Font.system(size: 18, weight: .semibold))
                Text(user.bio ?? "")
                    .font(Font.system(size: 18))
                Text(user.url!)
                    .font(Font.system(size: 12))
            }
            Spacer()
           
            
        }
        .padding()
    
    
    }
}
#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
