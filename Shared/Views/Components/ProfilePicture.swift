//
//  ProfilePicture.swift
//  Clubhouse (iOS)
//
//  Created by Florian Mari on 17/02/2021.
//

import SwiftUI

struct ProfilePicture: View {
    var imageName: String
    var showAddButton: Bool = true
    
    var body: some View {
        GeometryReader { bounds in
            if showAddButton {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 23, style: .continuous))
                    .overlay(
                        Image(systemName: "plus")
                            .frame(width: bounds.frame(in: .global).size.width * 0.25, height: bounds.frame(in: .global).size.width * 0.25)
                            .font(.system(size: bounds.frame(in: .global).size.width * 0.15, weight: .bold))
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.white)
                            ),
                        alignment: .bottomLeading
                    )
            } else {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 23))
            }
            
        }
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture(imageName: "jeff")
    }
}
