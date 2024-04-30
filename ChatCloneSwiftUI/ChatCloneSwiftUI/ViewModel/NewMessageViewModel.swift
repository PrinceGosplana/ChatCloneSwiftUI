//
//  NewMessageViewModel.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 29.04.2024.
//

import SwiftUI
//import Firebase

final class NewMessageViewModel: ObservableObject {
    @Published var users = [User]()
    
    private let currentUser: User?

    init(currentUser: User?) {
        self.currentUser = currentUser
        fetchUsers()
    }

    func fetchUsers() {
//        Firestore.firestore().collection
        users = User.mockUsers.filter { $0.id != currentUser?.id }
    }
}
