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

struct HeaderModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: 18, weight: .semibold))
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

struct SearchBarModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding(.horizontal)
            .padding(.vertical, 10)
            .overlay{
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.systemGray))
                    .shadow(color: .black.opacity(0.4), radius: 8)
            }
    }
}

struct SearchFilterModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding(.horizontal)
            .padding(.vertical, 10)
            .foregroundStyle(.foreground)
            .overlay{
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.systemGray))
            }
    }
}
