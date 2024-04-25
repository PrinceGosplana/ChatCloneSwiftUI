//
//  SettingsType.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import SwiftUI

enum SettingsType: Int, CaseIterable, Identifiable {

    case account, notifications, startedMessages

    var title: String {
        switch self {
        case .account: "Account"
        case .notifications: "Notifications"
        case .startedMessages: "Starred Messages"
        }
    }

    var imageName: String {
        switch self {
        case .account: "key.fill"
        case .notifications: "bell.badge.fill"
        case .startedMessages: "star.fill"
        }
    }

    var backgroundColor: Color {
        switch self {
        case .account: .blue
        case .notifications: .red
        case .startedMessages: .yellow
        }
    }

    var id: Int { rawValue }
}
