//
//  ViewModifiers.swift
//  Clubhouse (iOS)
//
//  Created by Florian Mari on 17/02/2021.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    var iconColor: Color = .gray
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
                .foregroundColor(iconColor)
        }
    }
}

struct CapsuleModifier: ViewModifier {
    var foregroundColor: Color = .gray
    var backgroundColor: Color = Color("accentBackground")
    
    func body(content: Content) -> some View {
        content
            .padding(.horizontal, 35)
            .padding(.vertical, 8)
            .foregroundColor(foregroundColor)
            .background(
                Capsule()
                    .foregroundColor(backgroundColor)
            )
    }
}
