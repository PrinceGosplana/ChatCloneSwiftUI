//
//  SettingsView.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import SwiftUI

struct SettingsView: View {


    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()

            VStack(spacing: 32) {

                SettingsHeader()

                VStack(spacing: 1) {
                    ForEach(SettingsCellViewModel.allCases) { viewModel in
                        SettingsCell(viewModel: viewModel)
                    }
                }

                Button {

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
    SettingsView()
}
