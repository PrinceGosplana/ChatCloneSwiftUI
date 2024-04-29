//
//  AuthManager.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 28.04.2024.
//

//import Firebase
import UIKit


@MainActor
final class AuthManager: NSObject, ObservableObject {

//    @Published var userSession: FirebaseAuth.User?
    @Published var userSession: Bool
    @Published var didAuthenticateUser = false
    private let service: AuthServiceProtocol
//    private var tempCurrentUser: FirebaseAuth.User?

    init(service: AuthServiceProtocol) {
        self.service = service
        userSession = false
//        if let currentUid = Auth.auth().currentUser?.uid {
//            authState = .authenticated(currentUid)
//        }
    }

    func logIn() async {
        await service.logIn()
        userSession = true
    }

    func register(withEmail email: String, password: String, fullName: String, userName: String) async {
        do {
            let uid = try await service.register(withEmail: email, password: password, fullName: fullName, userName: userName)
            userSession = true
        } catch {
            print("Error with user register \(error.localizedDescription)")
        }
    }

    func uploadProfileImage(_ image: UIImage) async {
        do {
            let uid = try await service.uploadProfileImage(image)
        } catch {
            print("Error with upload profile image \(error.localizedDescription)")
        }
    }

    func signOut() async {
        userSession = false
        await service.signOut()
    }

}
