//
//  UserCell.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 26.04.2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())

                VStack(alignment: .leading, spacing: 4) {
                    Text("Edddie Brock")
                        .font(.subheadline)
                        .fontWeight(.semibold)

                    Text("@some text")
                        .font(.footnote)
                }

                Spacer()
            }
            .foregroundStyle(.black)
            .padding(.horizontal)

        }
        .padding(.top)
    }
}

#Preview {
    UserCell()
}
