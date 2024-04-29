//
//  MockAuthService.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 29.04.2024.
//

import UIKit

actor MockAuthService: AuthServiceProtocol {
    func logIn(withEmail email: String, password: String) async throws -> String {
        NSUUID().uuidString
    }

    func register(withEmail email: String, password: String, fullName: String, userName: String) async throws -> String {
        NSUUID().uuidString
    }

    func uploadProfileImage(_ image: UIImage) async throws -> String {
        NSUUID().uuidString
    }

    func signOut() async {

    }

    func fetchUser() async throws -> User {
        User.mockUser
    }
}
