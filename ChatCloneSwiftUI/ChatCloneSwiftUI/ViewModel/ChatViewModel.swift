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
        messages = MessageModel.mockMessages
    }

    func sendMessage(_ messageText: String) {
//        let messageModel = MessageModel(fromId: ", toId: <#T##String#>, read: <#T##Bool#>, text: <#T##String#>, timestamp: <#T##Int#>)
//        messages.append(messageModel)
    }
}
