//
//  ConversationsView.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import SwiftUI

struct ConversationsView: View {

    @State private var showNewMessage = false
    @State private var showChatView = false

    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {
                ScrollView {
                    VStack(alignment: .leading) {

                        ForEach((0 ... 10), id: \.self) { _ in
                            NavigationLink {
                                ChatView()
                            } label: {
                                ConversationCell()
                            }
                        }
                    }
                }

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
                .sheet(isPresented: $showNewMessage) {
                    NewMessage(showChatView: $showChatView)
                }
            }
        }
    }
}

#Preview {
    ConversationsView()
}
