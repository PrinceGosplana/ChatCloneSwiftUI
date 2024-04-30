//
//  MessageModel.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 26.04.2024.
//

//import FirebaseFirestoreSwift
//import Firestore
import Foundation

struct MessageModel: Identifiable {
//    @DocumentID var id: String?
    let id = NSUUID().uuidString
    let fromId: String
    let toId: String
    let read: Bool
    let text: String
    let timestamp: Int
}

extension MessageModel {
    static let mockMessages: [MessageModel] = [
        .init(
            fromId: "Harry-4CC2E6A7-F95C-43C6-A291-A376F23486D6",
            toId: "Hermiona-34A7EFAB-21F5-481F-B586-8E67462D040E",
            read: true,
            text: "Hey what's up man",
            timestamp: 1714464797
        ),
        .init(
            fromId: "Hermiona-34A7EFAB-21F5-481F-B586-8E67462D040E",
            toId: "Harry-4CC2E6A7-F95C-43C6-A291-A376F23486D6",
            read: true,
            text: "Not much how are you",
            timestamp: 1714464846
        ),
        .init(
            fromId: "Artur-4F34B235-6A97-4C98-9EB0-DDCD15D4B996",
            toId: "Pinky-DBB5000B-A696-4A3D-A744-2985D222C6BE",
            read: true,
            text: "I'm doing fine. Having fun building this upp",
            timestamp: 1714464872
        ),
        .init(
            fromId: "Pinky-DBB5000B-A696-4A3D-A744-2985D222C6BE",
            toId: "Artur-4F34B235-6A97-4C98-9EB0-DDCD15D4B996",
            read: false,
            text: "I am learning alot?",
            timestamp: 1714464893
        ),
        .init(
            fromId: "Lacosta-0B423DFE-2073-4E00-8F9A-712D6BE9F1EF",
            toId: "Anita-CEA5F2C1-B396-403D-A245-55429A58F430",
            read: true,
            text: "Yeah, I am too love this course",
            timestamp: 1714464901
        ),
        .init(
            fromId: "Anita-CEA5F2C1-B396-403D-A245-55429A58F430",
            toId: "Lacosta-0B423DFE-2073-4E00-8F9A-712D6BE9F1EF",
            read: true,
            text: "That's awesome, im glad i bought it",
            timestamp: 1714464908
        ),
        .init(
            fromId: "Lacosta-0B423DFE-2073-4E00-8F9A-712D6BE9F1EF",
            toId: "Anita-CEA5F2C1-B396-403D-A245-55429A58F430",
            read: true,
            text: "It's true, man",
            timestamp: 1714464920
        ),
        .init(
            fromId: "Mark-A4023EE1-62F7-441E-94FD-DD237EE17A52",
            toId: "Anita-CEA5F2C1-B396-403D-A245-55429A58F430",
            read: true,
            text: "It looks absolutely money",
            timestamp: 1714464930
        ),
        .init(
            fromId: "Anita-CEA5F2C1-B396-403D-A245-55429A58F430",
            toId: "Mark-A4023EE1-62F7-441E-94FD-DD237EE17A52",
            read: true,
            text: "Talk to you later!",
            timestamp: 1714464976
        ),
        .init(
            fromId: "Mark-A4023EE1-62F7-441E-94FD-DD237EE17A52",
            toId: "Anita-CEA5F2C1-B396-403D-A245-55429A58F430",
            read: false,
            text: "Piece!",
            timestamp: 1714464982
        )
    ]
}
