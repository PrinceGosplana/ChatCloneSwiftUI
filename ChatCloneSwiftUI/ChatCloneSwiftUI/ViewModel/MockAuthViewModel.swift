//
//  MockAuthViewModel.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 29.04.2024.
//

import UIKit

final class MockAuthViewModel: NSObject, ObservableObject, AuthProtocol {
    func logIn() {}

    func register(withEmail email: String, password: String, fullName: String, userName: String) {}

    func uploadProfileImage(_ image: UIImage) {}

    func signOut() {}
}
