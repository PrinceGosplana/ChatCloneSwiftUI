//
//  AuthViewModel.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 28.04.2024.
//

import Foundation

protocol AuthProtocol {
    func logIn()
    func register()
    func uploadProfileImage()
    func signOut()
}

final class AuthViewModel: NSObject, ObservableObject, AuthProtocol {
    
    func register() {

    }

    func signOut() {

    }
    
    func uploadProfileImage() {

    }

    func logIn() {

    }
}
