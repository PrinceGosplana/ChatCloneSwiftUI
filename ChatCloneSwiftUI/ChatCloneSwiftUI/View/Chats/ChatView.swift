//
//  ChatView.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import SwiftUI

struct ChatView: View {

    @State private var messageText = ""
    @ObservedObject var viewModel: ChatViewModel
    private let user: User

    init(user: User, currentUser: User?) {
        self.viewModel = ChatViewModel(toUser: user, currentUser: currentUser)
        self.user = user
    }

    var body: some View {
        VStack(spacing: 0.1) {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(viewModel.messages) { message in
//                        Message(
//                            isFromCurrentUser: message.isFromCurrentUser,
//                            message: message.messageText
//                        )
                    }
                }
            }
            CustomInput(text: $messageText, action: sendMessage)
        }
        .navigationTitle(user.userName)
        .navigationBarTitleDisplayMode(.inline)
    }

    private func sendMessage() {
        viewModel.sendMessage(messageText)
        messageText = ""
    }
}

#Preview {
    ChatView(user: User.mockUsers[2], currentUser: User.mockUsers[0])
}
