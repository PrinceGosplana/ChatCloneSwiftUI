//
//  RegistrationView.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 24.04.2024.
//

import SwiftUI

struct RegistrationView: View {

    @Environment(\.dismiss) var dismiss
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var userName = ""
    @ObservedObject var viewModel = AuthViewModel()

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 12) {
                HStack { Spacer() }
                Text("Get started.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Create your account.")
                    .foregroundStyle(Color(UIColor.systemBlue))
                    .font(.largeTitle)
                    .fontWeight(.semibold)

                VStack(spacing: 40) {
                    CustomTextField(
                        imageName: "envelope",
                        placeholderText: "Email",
                        isSecureField: false,
                        value: $email
                    )

                    CustomTextField(
                        imageName: "person",
                        placeholderText: "User name",
                        isSecureField: false,
                        value: $userName
                    )

                    CustomTextField(
                        imageName: "person",
                        placeholderText: "Full name",
                        isSecureField: false,
                        value: $fullName
                    )

                    CustomTextField(
                        imageName: "lock",
                        placeholderText: "Password",
                        isSecureField: true,
                        value: $password
                    )
                }
                .padding([.top, .horizontal], 32)
            }
            .padding(.leading)

            Button {
                viewModel.register(
                    withEmail: email,
                    password: password,
                    fullName: fullName,
                    userName: userName
                )
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(width: 340, height: 50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .padding()
            }
            .padding(.top, 24)
            .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)

            Spacer()

            Button {
                dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")

                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.bottom, 32)
        }
        .navigationDestination(isPresented: $viewModel.didAuthenticateUser) {
            ProfilePhotoSelector().navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    RegistrationView()
}
