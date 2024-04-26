//
//  Message.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 26.04.2024.
//

import SwiftUI

struct Message: View {

    var isFromCurrentUser: Bool
    var message: String

    var body: some View {
        HStack {
            if isFromCurrentUser {

                Spacer()

                Text(message)
                    .padding(12)
                    .background(Color(.systemBlue))
                    .font(.callout)
                    .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                    .foregroundStyle(.white)
                    .padding(.leading, 100)
                    .padding(.horizontal)
            } else {
                HStack(alignment: .bottom) {
                    Image(.profilePicture)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())

                    Text(message)
                        .padding(12)
                        .background(Color(.systemGray5))
                        .font(.callout)
                        .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
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
    Message(isFromCurrentUser: true, message: "Test")
}
