//
//  AuthServiceProtocol.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 29.04.2024.
//

import UIKit

protocol AuthServiceProtocol {
    func logIn(withEmail email: String, password: String) async throws -> String
    func register(withEmail email: String, password: String, fullName: String, userName: String) async throws -> String
    func uploadProfileImage(_ image: UIImage) async throws -> String
    func signOut() async
}
