//
//  SettingsHeader.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import SwiftUI

struct SettingsHeader: View {

    private let user: User

    init(user: User) {
        self.user = user
    }

    var body: some View {
            HStack {
                Image(.profilePicture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 65)
                    .clipShape(Circle())
                    .padding(.leading)

                VStack(alignment: .leading, spacing: 4) {
                    Text(user.fullName)
                        .font(.title3)
                        .foregroundStyle(.black)

                    Text("Available")
                        .foregroundStyle(.gray)
                        .font(.subheadline)
                }

                Spacer()
            }
            .frame(height: 80)
            .background(Color.white)
    }
}

#Preview {
    SettingsHeader(user: User.mockUser)
}
