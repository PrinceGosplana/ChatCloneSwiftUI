//
//  ChatViewModel.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 26.04.2024.
//

import Foundation

class ChatViewModel: ObservableObject {

    @Published var messages = [MessageModel]()
    private let currentUser: User?
    private let toUser: User

    init(toUser: User, currentUser: User?) {
        self.toUser = toUser
        self.currentUser = currentUser
        messages = fetchMessages()
    }

    func sendMessage(_ messageText: String) {
        guard let currentUser else { return }

//        let currentUserRef = .document(currentUser.id).collection(toUser.id).document()
//        let chatPartnerRef = .document(toUser.id).collection(currentUser.id)
//        let messageId = currentUserRef.documentId
//        let data: [String: Any] = [
//            "text": messageText,
//            "fromId": currentUser.id,
//            "toId": toUser.id,
//            "read": false,
//            "timestamp": Date().timeIntervalSinceNow
//        ]
//
//        chatPartnerRef.setData(data)
//        chatPartnerRef.document(currentUser.id).setData(data)
    }

    private func fetchMessages() -> [MessageModel] {
        guard let currentUser else { return [] }
        let messages = MessageModel.mockMessages.filter { $0.id == currentUser.id || $0.toId == currentUser.id  }
        let messages2 = messages.filter { $0.toId == toUser.id || $0.id == toUser.id  }
            .sorted { $0.timestamp < $1.timestamp }
        return messages2
    }
}
