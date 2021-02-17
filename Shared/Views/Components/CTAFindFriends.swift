//
//  CTAFindFriends.swift
//  Clubhouse (iOS)
//
//  Created by Florian Mari on 17/02/2021.
//

import SwiftUI

struct CTAFindFriends: View {
    var body: some View {
        Text("Clubhouse is full of interesting people!\nTry following at least 25.")
            .multilineTextAlignment(.center)
            .font(.headline)
            .padding(.top, 50)
        
        Rectangle()
            .fill(Color("background"))
            .frame(maxWidth: .infinity, minHeight: 150.0, maxHeight: 150.0)
            .overlay(overlay)
            .clipped()
            .padding(.vertical)
        
        Label(
            title: {
                Text("Find more people to follow")
                    .font(.callout)
                    .fontWeight(.medium)
            },
            icon: { Image(systemName: "person.crop.circle.badge.plus") }
        )
        .modifier(CapsuleModifier())
        .padding(.bottom, 40)
    }
    
    var overlay: some View {
        ZStack {
            ProfilePicture(imageName: "jeff")
                .frame(width: 70)
                .offset(x: -40, y: 5)
            ProfilePicture(imageName: "jeff")
                .frame(width: 70)
                .offset(x: 10, y: 50)
            ProfilePicture(imageName: "jeff")
                .frame(width: 50)
                .offset(x: 80, y: 10)
            ProfilePicture(imageName: "jeff")
                .frame(width: 50)
                .offset(x: -80, y: 90)
            ProfilePicture(imageName: "jeff")
                .frame(width: 40)
                .offset(x: 130, y: 50)
            ProfilePicture(imageName: "jeff")
                .frame(width: 40)
                .offset(x: 125, y: 50)
            ProfilePicture(imageName: "jeff")
                .frame(width: 30)
                .offset(x: 150, y: 70)
            ProfilePicture(imageName: "jeff")
                .frame(width: 30)
                .offset(x: -150, y: 80)
        }
    }
}

struct CTAFindFriends_Previews: PreviewProvider {
    static var previews: some View {
        CTAFindFriends()
    }
}
