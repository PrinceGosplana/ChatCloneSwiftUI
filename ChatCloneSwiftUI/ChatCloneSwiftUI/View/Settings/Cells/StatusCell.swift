//
//  StatusCell.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import SwiftUI

struct StatusCell: View {

    let status: String

    var body: some View {
        HStack {
            Text(status)
                .foregroundStyle(.black)
            Spacer()
        }
        .frame(height: 56)
        .padding(.horizontal)
        .background(.white)
    }
}


#Preview {
    StatusCell(status: "Test")
}
