//
//  CustomInput.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 26.04.2024.
//

import SwiftUI

struct CustomInput: View {
    @Binding var text: String
    var action: () -> Void

    var body: some View {
        VStack {
            Rectangle()
                .foregroundStyle(Color(.separator))
                .frame(maxWidth: .infinity, maxHeight: 0.75)

            HStack {
                TextField("Message...", text: $text)
                    .textFieldStyle(.plain)
                    .font(.body)
                    .frame(minHeight: 30)

                Button {
                    action()
                } label: {
                    Text("Send")
                        .bold()
                        .foregroundStyle(.black)
                }
            }
            .padding(.horizontal)
        }
    }
}
