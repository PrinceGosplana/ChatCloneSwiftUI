//
//  SettingsView.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import SwiftUI

struct SettingsView: View {

    @EnvironmentObject var authManager: AuthManager

    private let user: User

    init(user: User) {
        self.user = user
    }
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()

            VStack(spacing: 32) {

                NavigationLink {
                    EditProfile()
                } label: {
                    SettingsHeader(user: user)
                }


                VStack(spacing: 1) {
                    ForEach(SettingsType.allCases) { viewModel in
                        SettingsCell(viewModel: viewModel)
                    }
                }

                Button {
                    Task { await authManager.signOut() }
                } label: {
                    Text("Log Out")
                        .foregroundStyle(.red)
                        .font(.title3)
                }
                .frame(maxWidth: .infinity, maxHeight: 50)
                .background(.white)

                Spacer()
            }
        }
    }
}

#Preview {
    SettingsView(user: User.mockUsers[3])
        .environmentObject(AuthManager(service: MockAuthService()))
}
