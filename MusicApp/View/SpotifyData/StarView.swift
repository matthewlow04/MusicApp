//
//  StarView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-07-28.
//

import SwiftUI

struct StarView: View {
    let filled: Bool
    let half: Bool
    let action: () -> Void
    
    var body: some View {
        Image(systemName: filled ? "star.fill" : half ? "star.leadinghalf.filled" : "star")
            .foregroundColor(.yellow)
            .onTapGesture {
                action()
            }
    }
}
