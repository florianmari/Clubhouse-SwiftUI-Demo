//
//  UserDailyPlanning.swift
//  Clubhouse (iOS)
//
//  Created by Florian Mari on 17/02/2021.
//

import SwiftUI

struct UserDailyPlanning: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 8) {
            HStack(spacing: 20) {
                Text("16:00")
                    .font(.subheadline)
                Text("Growing up as creative")
                    .foregroundColor(.black)
                    .font(.subheadline)
            }
            HStack(spacing: 20) {
                Text("16:00")
                    .font(.subheadline)
                Text("Growing up as creative")
                    .foregroundColor(.black)
                    .font(.subheadline)
            }
            HStack(spacing: 20) {
                Text("16:00")
                    .font(.subheadline)
                Text("Growing up as creative")
                    .foregroundColor(.black)
                    .font(.subheadline)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color("accentBackground"))
        .cornerRadius(25)
        .padding(.horizontal)
        .padding(.bottom, 20)
        
    }
}

struct UserDailyPlanning_Previews: PreviewProvider {
    static var previews: some View {
        UserDailyPlanning()
    }
}
