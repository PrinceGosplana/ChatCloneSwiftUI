//
//  User.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 29.04.2024.
//

//import FirebaseFirestoreSwift
import Foundation

struct User: Identifiable, Decodable, Hashable {
//    @DocumentID var id: String?
    let id: String
    let userName: String
    let fullName: String
    let email: String
    let profileImageUrl: String
}

extension User {
    static var mockUsers = [
        User(id: NSUUID().uuidString, userName: "Harry", fullName: "Harry Potter", email: "harry@gmail.com", profileImageUrl: "user1"),
        User(id: NSUUID().uuidString, userName: "Hermiona", fullName: "Hermiona Grizly", email: "hermioney@gmail.com", profileImageUrl: "user2"),
        User(id: NSUUID().uuidString, userName: "Artur", fullName: "Artur Mock", email: "artur@gmail.com", profileImageUrl: "user3"),
        User(id: NSUUID().uuidString, userName: "Pinky", fullName: "Pinky Linky", email: "pinky@gmail.com", profileImageUrl: "user4"),
        User(id: NSUUID().uuidString, userName: "Lacosta", fullName: "Lacosta Maly", email: "lacosta@gmail.com", profileImageUrl: "user5"),
        User(id: NSUUID().uuidString, userName: "Anita", fullName: "Anita Black", email: "anita@gmail.com", profileImageUrl: "user6"),
        User(id: NSUUID().uuidString, userName: "Mark", fullName: "Mark Spenser", email: "mark@gmail.com", profileImageUrl: "user7")
    ]
}
