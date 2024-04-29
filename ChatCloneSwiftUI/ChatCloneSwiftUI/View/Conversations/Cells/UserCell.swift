//
//  UserCell.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 26.04.2024.
//

import SwiftUI

struct UserCell: View {
    let user: User

    var body: some View {
        VStack {
            HStack {
                Image(user.profileImageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())

                VStack(alignment: .leading, spacing: 4) {
                    Text(user.fullName)
                        .font(.subheadline)
                        .fontWeight(.semibold)

                    Text(user.email)
                        .font(.footnote)
                }

                Spacer()
            }
            .foregroundStyle(.black)
            .padding(.horizontal)

        }
        .padding(.top)
    }
}

#Preview {
    UserCell(user: User.mockUsers[2])
}
