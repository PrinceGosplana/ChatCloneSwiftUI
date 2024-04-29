//
//  NewMessage.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 26.04.2024.
//

import SwiftUI

struct NewMessage: View {
    @State private var searchText = ""
    @State private var isEditing = false
    @Binding var showChatView: Bool
    @ObservedObject var viewModel = NewMessageViewModel()

    @Environment(\.dismiss) var dismiss

    var body: some View {
        ScrollView {

            SearchBar(text: $searchText, isEditing: $isEditing)
                .onTapGesture { isEditing.toggle() }
                .padding()
            
            VStack(alignment: .leading) {

                ForEach(viewModel.users) { user in
                    Button {
                        showChatView.toggle()
                        dismiss()
                    } label: {
                        UserCell(user: user)
                    }
                }
            }
        }
    }
}

#Preview {
    NewMessage(showChatView: .constant(false))
}
