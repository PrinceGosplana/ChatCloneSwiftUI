//
//  ConversationCell.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 26.04.2024.
//

import SwiftUI

struct ConversationCell: View {
    let viewModel: MessageViewModel

    var body: some View {
        VStack {
            HStack {
                if let profileImageUrl = viewModel.message.user?.profileImageUrl {
                    Image(profileImageUrl)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48)
                        .clipShape(Circle())
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text(viewModel.message.user?.fullName ?? "")
                        .font(.subheadline)
                        .fontWeight(.semibold)

                    Text(viewModel.message.text)
                        .font(.footnote)
                }

                Spacer()
            }
            .foregroundStyle(.black)
            .padding(.horizontal)
            
            Divider()
        }
        .padding(.top)
    }
}

#Preview {
    ConversationCell(
        viewModel: MessageViewModel(
            message: MessageModel.mockMessages[0],
            currentUser: User.mockUsers[0]
        )
    )
}
