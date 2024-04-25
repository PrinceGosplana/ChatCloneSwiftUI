//
//  StatusSelector.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import SwiftUI

struct StatusSelector: View {

    @ObservedObject var viewModel = StatusViewModel()

    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 1) {
                    Text("CURRENTLY SET TO")
                        .foregroundStyle(.gray)
                        .padding()

                    StatusCell(status: viewModel.status.title)

                    Text("SELECT YOUR STATUS")
                        .foregroundStyle(.gray)
                        .padding()

                    ForEach(UserStatus.allCases.filter { $0 != .notConfigured}) { status in
                        Button {
                            viewModel.updateStatus(status)
                        } label: {
                            StatusCell(status: status.title)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    StatusSelector()
}
