//
//  Message.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 26.04.2024.
//

import SwiftUI

struct Message: View {

    let viewModel: MessageViewModel

    var body: some View {
        HStack {
            if viewModel.isFromCurrentUser {

                Spacer()

                Text(viewModel.message.text)
                    .padding(12)
                    .background(Color(.systemBlue))
                    .font(.callout)
                    .clipShape(ChatBubble(isFromCurrentUser: viewModel.isFromCurrentUser))
                    .foregroundStyle(.white)
                    .padding(.leading, 100)
                    .padding(.horizontal)
            } else {
                HStack(alignment: .bottom) {
                    Image(viewModel.partnerUser.profileImageUrl)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())

                    Text(viewModel.message.text)
                        .padding(12)
                        .background(Color(.systemGray5))
                        .font(.callout)
                        .clipShape(ChatBubble(isFromCurrentUser: viewModel.isFromCurrentUser))
                        .foregroundStyle(.black)
                }
                .padding(.horizontal)
                .padding(.trailing, 80)

                Spacer()
            }
        }
    }
}

#Preview {
    Message(viewModel: MessageViewModel(message: MessageModel.mockMessages[0], currentUser: User.mockUsers[0], partnerUser: User.mockUsers[1]))
}
