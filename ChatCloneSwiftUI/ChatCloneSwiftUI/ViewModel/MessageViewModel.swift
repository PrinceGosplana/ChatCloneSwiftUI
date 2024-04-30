//
//  MessageViewModel.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 30.04.2024.
//

import Foundation

struct MessageViewModel {
    let message: MessageModel
    let currentUser: User
    let partnerUser: User

    var isFromCurrentUser: Bool {
        message.id == currentUser.id
    }
}
