//
//  Modifiers.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-07-28.
//

import Foundation
import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .bold()
    }
}

struct ButtonModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
    }
}

struct TextFieldModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray5))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 1)))
            .padding(.horizontal, 24)
            
    }

}

struct CreateAccountButtonModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 360, height: 44)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
