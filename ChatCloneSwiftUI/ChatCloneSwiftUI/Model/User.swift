//
//  User.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 29.04.2024.
//

//import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
//    @DocumentID var id: String?
    let id: String
    let userName: String
    let fullName: String
    let email: String
    let profileImageUrl: String
}

extension User {
    static var mockUser = User(
        id: "111",
        userName: "Bomble",
        fullName: "Doumble",
        email: "test@gmail.com",
        profileImageUrl: "profile-picture"
    )
}
