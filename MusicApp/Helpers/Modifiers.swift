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
