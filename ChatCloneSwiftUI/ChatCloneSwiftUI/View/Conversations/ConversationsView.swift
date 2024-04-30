//
//  ConversationsView.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import SwiftUI

struct ConversationsView: View {
    @EnvironmentObject var authManager: AuthManager
    @State private var showNewMessage = false
    @State private var showChatView = false
    @State private var selectedUser: User?
    @ObservedObject var viewModel: ConversationsViewModel
    private let currentUser: User

    init(currentUser: User) {
        self.currentUser = currentUser
        viewModel = ConversationsViewModel(currentUser: currentUser)
    }

    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {

                ScrollView {
                    VStack(alignment: .leading) {

                        ForEach(viewModel.recentMessages) { user in
//                            NavigationLink {
//                                ChatView(user: user, currentUser: currentUser)
//                            } label: {
                                ConversationCell()
//                            }
                        }
                    }
                }

                HStack {
                    Spacer()
                    
                    Button {
                        showNewMessage.toggle()
                    } label: {
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 24, height: 24)
                            .padding()
                    }
                    .background(Color(.systemBlue))
                    .foregroundStyle(.white)
                    .clipShape(Circle())
                    .padding()
                }
                .sheet(isPresented: $showNewMessage) {
                    NewMessage(
                        showChatView: $showChatView,
                        viewModel: NewMessageViewModel(
                            currentUser: authManager.currentUser
                        ),
                        user: $selectedUser
                    )
                }
                .navigationDestination(item: $selectedUser) { user in
                    ChatView(user: user, currentUser: authManager.currentUser ?? User.mockUsers[0])
                }
            }
        }
    }
}

#Preview {
    ConversationsView(currentUser: User.mockUsers[1])
        .environmentObject(AuthManager(service: MockAuthService()))
}
