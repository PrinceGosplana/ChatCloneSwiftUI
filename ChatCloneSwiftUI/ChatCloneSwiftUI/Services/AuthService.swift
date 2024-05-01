//
//  AuthService.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 29.04.2024.
//

import UIKit

actor AuthService: AuthServiceProtocol {
    func logIn(withEmail email: String, password: String) async throws -> String {
//        let result = try await Auth.auth().signIn(withEmail: email, password: password)
//        return result.user.uid
        NSUUID().uuidString
    }
    
    func register(withEmail email: String, password: String, fullName: String, userName: String) async throws -> String {
        NSUUID().uuidString
//        let result = try await Auth.auth().createUser(withEmail: email, password: password)
//        return result.user.uid
        //            // succesfully register user
        //        guard let user = result?.user else { return }
        //        let data: [String: Any] = [
        //            "email": email,
        //            "username": userName,
        //            "fullname": fullName
        //        ]
        //
        //        Firestore.firestore().collectijon("users").document(user.uid).setData(data) { _ in
        //        self.tempCurrentUser = user
        //        }
        //        }
    }
    
    func uploadProfileImage(_ image: UIImage) async throws -> String {
        NSUUID().uuidString
//        guard let uid = tempCurrentUser?.uid { return }
//        ImageUploader.uploadImage(image: image) { imageUrl in
//            Firestore.firestore().collection("users").document(uid).updateData(["profileImageUrl": imageUrl]) { _ in
//                print("Succesfully updated user data...")
//            }
//        }
    }
    
    func signOut() async {
//        do {
//            try Auth.auth().signOut()
//        } catch {
//            print("Failed to signup with error \(error)")
//        }
    }

    func fetchUser() async throws -> User {
        User.mockUsers[0]
//        User.mockUsers.randomElement() ?? User.mockUsers[0]
    }
}
