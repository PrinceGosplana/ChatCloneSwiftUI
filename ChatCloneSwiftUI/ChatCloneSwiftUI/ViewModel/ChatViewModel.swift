//
//  ChatViewModel.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 26.04.2024.
//

import Foundation

class ChatViewModel: ObservableObject {

    @Published var messages = [MessageModel]()

    init() {
        messages = mockMessages
    }

    private var mockMessages: [MessageModel] {
        [
            .init(isFromCurrentUser: true, messageText: "Hey what's up man"),
            .init(isFromCurrentUser: false, messageText: "Not much how are you"),
            .init(isFromCurrentUser: true, messageText: "I'm doing fine. Having fun building this upp"),
            .init(isFromCurrentUser: true, messageText: "I am learning alot?"),
            .init(isFromCurrentUser: false, messageText: "Yeah, I am too love this course"),
            .init(isFromCurrentUser: true, messageText: "That's awesome, im glad i bought it"),
            .init(isFromCurrentUser: false, messageText: "It's true, man"),
            .init(isFromCurrentUser: false, messageText: "It looks absolutely money"),
            .init(isFromCurrentUser: true, messageText: "Talk to you later!"),
            .init(isFromCurrentUser: false, messageText: "Piece!"),
            .init(isFromCurrentUser: true, messageText: "yeah"),
        ]
    }

    func sendMessage(_ messageText: String) {
        let messageModel = MessageModel(isFromCurrentUser: true, messageText: messageText)
        messages.append(messageModel)
    }
}
