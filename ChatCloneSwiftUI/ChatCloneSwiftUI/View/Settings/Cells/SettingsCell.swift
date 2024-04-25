//
//  SettingsCell.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import SwiftUI

struct SettingsCell: View {

    let viewModel: SettingsType

    var body: some View {
        VStack {

            HStack {
                Image(systemName: viewModel.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                    .padding(6)
                    .background(viewModel.backgroundColor)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 6))

                Text(viewModel.title)
                    .font(.title3)

                Spacer()

                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)

            }

            .padding([.top, .horizontal])

            Divider()
                .padding(.leading)
        }
        .background(.white)
    }
}

#Preview {
    SettingsCell(viewModel: SettingsType.allCases[0])
}
