//
//  ContentView.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 23.04.2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        Group {
            if viewModel.userSession {
                MainTabView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AuthViewModel(service: MockAuthService()))
}
