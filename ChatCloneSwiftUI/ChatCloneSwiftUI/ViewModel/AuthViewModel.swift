//
//  AuthViewModel.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 28.04.2024.
//

//import Firebase
import Foundation

protocol AuthProtocol {
    func logIn()
    func register(withEmail email: String, password: String, fullName: String, userName: String)
    func uploadProfileImage()
    func signOut()
}

final class AuthViewModel: NSObject, ObservableObject, AuthProtocol {

    func logIn() {

    }

    func register(withEmail email: String, password: String, fullName: String, userName: String) {
//        Auith.auth().createUser(withEmail: email, password: password) { result, error in
//            if let error {
//                // failed register
//                return
//            }
//
//            // succesfully register user
//        guard let user = result?.user else { return }
//        let data: [String: Any] = [
//            "email": email,
//            "username": userName,
//            "fullname": fullName
//        ]
//
//        Firestore.firestore().collectijon("users").document(user.uid).setData(data) { _ in
//            
//        }
//        }
    }

    func uploadProfileImage() {

    }

    func signOut() {

    }

}
