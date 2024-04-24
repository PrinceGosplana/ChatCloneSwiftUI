//
//  CustomTextField.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 24.04.2024.
//

import SwiftUI

struct CustomTextField: View {

    let imageName: String
    let placeholderText: String
    let isSecureField: Bool
    @Binding var value: String

    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color(.darkGray))
                if isSecureField {
                    SecureField(placeholderText, text: $value)
                } else {
                    TextField(placeholderText, text: $value)
                }
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}


#Preview {
    CustomTextField(
        imageName: "envelope",
        placeholderText: "Test",
        isSecureField: false,
        value: .constant("test")
    )
    .padding()
}
