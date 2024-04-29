//
//  LoginView.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 24.04.2024.
//

import SwiftUI

struct LoginView: View {

    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthManager

    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .leading, spacing: 12) {

                    HStack { Spacer() }
                    Text("Hello.")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Welcome Back")
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
                            imageName: "lock",
                            placeholderText: "Password",
                            isSecureField: true,
                            value: $password
                        )
                    }
                    .padding([.top, .horizontal], 32)
                }
                .padding(.leading)


                HStack {
                    Spacer()

                    NavigationLink {
                        Text("Reset password...")
                    } label: {
                        Text("Forgot Password?")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.top)
                            .padding(.trailing, 28)
                    }
                }

                Button {
                    Task { await viewModel.logIn() }
                } label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(width: 340, height: 50)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .padding()
                }
                .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)

                Spacer()

                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack {
                        Text("Don't have an account?")

                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.bottom, 32)
            }
        }
        .padding(.top, -60)
    }
}

#Preview {
    LoginView()
        .environmentObject(AuthManager(service: MockAuthService()))
}
