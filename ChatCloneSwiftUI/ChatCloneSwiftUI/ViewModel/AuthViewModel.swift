//
//  AuthViewModel.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 28.04.2024.
//

//import Firebase
import UIKit

protocol AuthProtocol {
    func logIn()
    func register(withEmail email: String, password: String, fullName: String, userName: String)
    func uploadProfileImage(_ image: UIImage)
    func signOut()
}

final class AuthViewModel: NSObject, ObservableObject, AuthProtocol {

    @Published var didAuthenticateUser = false
//    private var tempCurrentUser: FirebaseAuth.User?

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
//        self.tempCurrentUser = user
            didAuthenticateUser = true
//        }
//        }
    }

    func uploadProfileImage(_ image: UIImage) {
//        guard let uid = tempCurrentUser?.uid { return }
//        ImageUploader.uploadImage(image: image) { imageUrl in
//            Firestore.firestore().collection("users").document(uid).updateData(["profileImageUrl": imageUrl]) { _ in
//                print("Succesfully updated user data...")
//            }
//        }
    }

    func signOut() {

    }

}
