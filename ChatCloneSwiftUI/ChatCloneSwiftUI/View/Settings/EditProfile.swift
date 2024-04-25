//
//  EditProfile.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import SwiftUI

struct EditProfile: View {

    @State private var fullName = "Freddy Kruger"

    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 44) {

                VStack {
                    ProfileHeader()

                    Divider()
                        .padding(.horizontal)

                    TextField("Full name", text: $fullName)
                        .padding(8)
                }
                .background(.white)

                VStack(alignment: .leading) {

                    Text("Status")
                        .padding()
                        .foregroundStyle(.gray)

                    NavigationLink {
                        StatusSelector()
                    } label: {
                        HStack {
                            Text("At the movies")

                            Spacer()

                            Image(systemName: "chevron.right")
                                .foregroundStyle(.gray)
                        }
                        .padding()
                        .background(.white)
                    }

                }

                Spacer()
            }
        }
        .navigationTitle("Edit Profile")
        .navigationBarTitleDisplayMode(.inline)
    }


}

#Preview {
    EditProfile()
}
