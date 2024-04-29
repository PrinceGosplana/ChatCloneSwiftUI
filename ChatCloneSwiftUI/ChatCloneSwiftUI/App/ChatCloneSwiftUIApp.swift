//
//  ChatCloneSwiftUIApp.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 23.04.2024.
//

import SwiftUI
//import Firebase

@main
struct ChatCloneSwiftUIApp: App {

//    init() {
//        FirebaseApp.configure()
//    }
    var body: some Scene {
        WindowGroup {
            LoginView().environmentObject(AuthViewModel())
        }
    }
}
