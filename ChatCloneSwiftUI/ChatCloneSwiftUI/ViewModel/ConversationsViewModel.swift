//
//  ConversationsViewModel.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 30.04.2024.
//

import SwiftUI

final class ConversationsViewModel: ObservableObject {
    @Published var recentMessages = [MessageModel]()
    private let currentUser: User?

    init(currentUser: User) {
        self.currentUser = currentUser
        fetchRecentMessages()
    }

    private func fetchRecentMessages() {
        
    }
}
