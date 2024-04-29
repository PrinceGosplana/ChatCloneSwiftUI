//
//  MainTabView.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 24.04.2024.
//

import SwiftUI


struct MainTabView: View {

    @State private var selectedIndex: SelectedTab = .conversations
    @EnvironmentObject var authManager: AuthManager

    var body: some View {
        if let user = authManager.currentUser {
            NavigationStack {
                TabView(selection: $selectedIndex) {
                    ConversationsView()
                        .tabItem { Image(systemName: "bubble.left") }
                        .tag(SelectedTab.conversations)
                        .onTapGesture { selectedIndex = .conversations }

                    ChannelsView()
                        .tabItem { Image(systemName: "bubble.left.and.bubble.right") }
                        .tag(SelectedTab.channels)
                        .onTapGesture { selectedIndex = .channels }

                    SettingsView(user: user)
                        .tabItem { Image(systemName: "gear") }
                        .tag(SelectedTab.settings)
                        .onTapGesture { selectedIndex = .settings }
                }
                .navigationTitle(selectedIndex.description)
            }
        }
    }
}

#Preview {
    MainTabView()
        .environmentObject(AuthManager(service: MockAuthService()))
}

enum SelectedTab: Int {
    case conversations, channels, settings

    var description: String {
        switch self {
        case .conversations: "Chats"
        case .channels: "Channels"
        case .settings: "Settings"
        }
    }
}
