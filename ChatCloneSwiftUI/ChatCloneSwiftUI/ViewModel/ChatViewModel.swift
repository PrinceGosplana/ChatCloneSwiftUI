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
        fetchMessages()
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

        let message = MessageModel(
            id: currentUser.id,
            toId: toUser.id,
            read: false,
            text: messageText,
            timestamp: Int(
                Date().timeIntervalSinceNow
            ),
            user: toUser
        )
        messages.append(message)
    }

    private func fetchMessages() {
        guard let currentUser else { return }
//        let query = .document(currentUser.id).collection(toUser.id)
//            .order(by: "timestamp", descending: false)
//
//        query.addSnapshotListener { snapshot, _ in
//            guard let changes = snapshot?.documentChanges.filter({ $0.type == .added }) else { return }
//        var message = changes.compactMap{ try? $0.document.data(as: Message.self)}
//        for (index, message) in messages.enumerated() where message.id != currentUser.id {
//            messages[index].user = self.toUser
//        }
//        self.messages.append(contentsOf: messages)
//        }
//        query.getDocuments { snapshot, error in
//            guard let documents = snapshot?.documents else { return }
//            messages = documents.compactMap { try? $0.data(as: MessageModel.self) }
//        }

        let currentUserMessages = MessageModel.mockMessages.filter { $0.id == currentUser.id || $0.toId == currentUser.id  }
        var sortedMessages = currentUserMessages.filter { $0.toId == toUser.id || $0.id == toUser.id  }
            .sorted { $0.timestamp < $1.timestamp }

        for (index, message) in sortedMessages.enumerated() where message.id != currentUser.id {
            sortedMessages[index].user = self.toUser
        }
        self.messages = sortedMessages
    }
}
