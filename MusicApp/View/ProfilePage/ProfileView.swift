//
//  ProfileView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-04.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack (spacing: 12){
            
            ProfileHeaderView(user: User.MOCK_USERS[0])
            
            ScrollView{
                ProfileRowView(track: UITestTrack.MOCK_TRACKS, header: "Pinned")
         
                ProfileRowView(track: UITestTrack.MOCK_TRACKS, header: "Favourite Albums")
         
                ProfileRowView(track: UITestTrack.MOCK_TRACKS, header: "Recent Reviews")
         
                OuterChartView()
            }
         
        }
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ProfileView()
}
