//
//  ContentView.swift
//  Shared
//
//  Created by Florian Mari on 16/02/2021.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("background")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {                    
                    // Headers
                    CTAFindFriends()

                    // Rooms
                    VStack(spacing: 20) {
                        UserDailyPlanning()
                        
                        ForEach(0 ..< 2) { item in
                            RoomCard()
                        }
                        
                        Button {} label: {
                            Label(
                                title: { Text("Explore") },
                                icon: { Text("🌎") }
)
                        }
                        .modifier(CapsuleModifier())
                        Spacer(minLength: 120)
                    }
                }
                
                VStack {
                    Spacer()
                    Button {} label: {
                        Label("Start a room", systemImage: "plus")
                            .font(.system(size: 22, weight: .medium))
                    }
                    .modifier(CapsuleModifier(foregroundColor: .white, backgroundColor: .green))
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: leadingNavigationItems, trailing: trailingNavigationItems)
        }
    }
    
    var leadingNavigationItems: some View {
        Button {} label: {
            Image(systemName: "magnifyingglass")
                .font(.title2)
                .foregroundColor(.primary)
        }
    }
    
    var trailingNavigationItems: some View {
        HStack(spacing: 25) {
            Button {} label: {
                Image(systemName: "envelope.open.fill")
            }
            Button {} label: {
                Image(systemName: "calendar")
            }
            Button {} label: {
                Image(systemName: "bell")
            }
        }
        .font(.title2)
        .foregroundColor(.primary)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
