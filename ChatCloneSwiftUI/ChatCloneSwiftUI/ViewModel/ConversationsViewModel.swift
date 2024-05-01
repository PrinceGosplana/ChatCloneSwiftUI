//
//  ConversationsViewModel.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 30.04.2024.
//

import SwiftUI

final class ConversationsViewModel: ObservableObject {
    @Published var recentMessages = [MessageModel]()
    private let currentUser: User

    init(currentUser: User) {
        self.currentUser = currentUser
        fetchRecentMessages()
    }

    private func fetchRecentMessages() {
        let currentUserMessages = MessageModel.mockMessages.filter { $0.toId == currentUser.id && $0.read == false }
        var usersId: Set<String> = []
        _ = currentUserMessages.map { usersId.insert($0.id)}
        var finalArray = [MessageModel]()
        usersId.forEach { id in
            let array = currentUserMessages.filter { $0.id == id }//.sorted { $0.timestamp < $1.timestamp }
            if var lastElement = array.last {
                if let parthnerUser = User.mockUsers.filter({ $0.id == lastElement.id }).last {
                    lastElement.user = parthnerUser
                }
                finalArray.append(lastElement)
            }
        }
        recentMessages = finalArray
    }
}
