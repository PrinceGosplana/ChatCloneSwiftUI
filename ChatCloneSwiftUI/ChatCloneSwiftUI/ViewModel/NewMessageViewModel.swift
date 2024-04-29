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

    init() {
        fetchUsers()
    }

    func fetchUsers() {
//        Firestore.firestore().collection
        users = User.mockUsers
    }
}
