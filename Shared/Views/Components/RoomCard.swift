//
//  RoomCard.swift
//  Clubhouse (iOS)
//
//  Created by Florian Mari on 17/02/2021.
//

import SwiftUI

struct RoomCard: View {
    let users: [User] = User(name: "").example()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.white)
            
            VStack(spacing: 20) {
                HStack {
                    Text("title")
                        .font(.headline)
                    Spacer()
                }
                HStack(alignment: .top) {
                    ZStack {
                        ProfilePicture(imageName: "jeff", showAddButton: false)
                            .frame(width: 60, height: 60)
                            .offset(x: -30, y: 0)
                            .overlay(ProfilePicture(imageName: "jeff", showAddButton: false).offset(x: 20, y: 20))
                    }
                    .frame(width: 120)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        ForEach(users) { user in
                            Label(user.name, systemImage: "ellipsis.bubble")
                                .labelStyle(TrailingIconLabelStyle())
                        }
                    }
                    .font(.system(size: 20, weight: .medium))
                }
                HStack {
                    Label("459", systemImage: "person.fill")
                        .labelStyle(TrailingIconLabelStyle())
                    Text("/")
                    Label("16", systemImage: "ellipsis.bubble.fill")
                        .labelStyle(TrailingIconLabelStyle())
                }
                .foregroundColor(.gray)
            }
            .padding()
        }
        .padding(.horizontal)
    }
}

struct RoomCard_Previews: PreviewProvider {
    static var previews: some View {
        RoomCard()
    }
}
