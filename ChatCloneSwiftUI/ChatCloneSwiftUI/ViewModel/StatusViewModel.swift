//
//  StatusViewModel.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import SwiftUI

final class StatusViewModel: ObservableObject{
    @Published var status: UserStatus = .notConfigured

    func updateStatus(_ status: UserStatus) {
        self.status = status
    }
}
