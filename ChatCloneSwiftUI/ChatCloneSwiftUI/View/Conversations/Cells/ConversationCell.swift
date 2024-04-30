//
//  ConversationCell.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 26.04.2024.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack {
                Image(.profile)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())

                VStack(alignment: .leading, spacing: 4) {
                    Text("Edddie Brock")
                        .font(.subheadline)
                        .fontWeight(.semibold)

                    Text("This is some test messgae for now...")
                        .font(.footnote)
                }

                Spacer()
            }
            .foregroundStyle(.black)
            .padding(.horizontal)
            
            Divider()
        }
        .padding(.top)
    }
}

#Preview {
    ConversationCell()
}
