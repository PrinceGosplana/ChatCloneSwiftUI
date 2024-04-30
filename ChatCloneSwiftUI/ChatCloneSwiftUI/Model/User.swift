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
        User(id: "Harry-4CC2E6A7-F95C-43C6-A291-A376F23486D6", userName: "Harry", fullName: "Harry Potter", email: "harry@gmail.com", profileImageUrl: "user1"),
        User(id: "Hermiona-34A7EFAB-21F5-481F-B586-8E67462D040E", userName: "Hermiona", fullName: "Hermiona Grizly", email: "hermioney@gmail.com", profileImageUrl: "user2"),
        User(id: "Artur-4F34B235-6A97-4C98-9EB0-DDCD15D4B996", userName: "Artur", fullName: "Artur Mock", email: "artur@gmail.com", profileImageUrl: "user3"),
        User(id: "Pinky-DBB5000B-A696-4A3D-A744-2985D222C6BE", userName: "Pinky", fullName: "Pinky Linky", email: "pinky@gmail.com", profileImageUrl: "user4"),
        User(id: "Lacosta-0B423DFE-2073-4E00-8F9A-712D6BE9F1EF", userName: "Lacosta", fullName: "Lacosta Maly", email: "lacosta@gmail.com", profileImageUrl: "user5"),
        User(id: "Anita-CEA5F2C1-B396-403D-A245-55429A58F430", userName: "Anita", fullName: "Anita Black", email: "anita@gmail.com", profileImageUrl: "user6"),
        User(id: "Mark-A4023EE1-62F7-441E-94FD-DD237EE17A52", userName: "Mark", fullName: "Mark Spenser", email: "mark@gmail.com", profileImageUrl: "user7")
    ]
}
