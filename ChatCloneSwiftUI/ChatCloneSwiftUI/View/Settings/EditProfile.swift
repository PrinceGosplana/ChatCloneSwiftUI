//
//  EditProfile.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import SwiftUI

struct EditProfile: View {

    @State private var fullName = "Freddy Kruger"
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?

    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 44) {

                VStack {
                    HStack {
                        VStack {
                            if let profileImage {
                                profileImage
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 64, height: 64)
                                    .clipShape(Circle())
                            } else {
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 64, height: 64)
                                    .clipShape(Circle())
                            }

                            Button("Edit") {
                                showImagePicker.toggle()
                            }
                            .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                                ImagePicker(image: $selectedImage)
                            }
                        }
                        .padding(.top)

                        Text("Enter your name or change your profile photo")
                            .font(.headline)
                            .foregroundStyle(.gray)
                            .padding([.bottom, .horizontal])
                    }

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

    private func loadImage() {
        guard let selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }

    private func updateProfileImagel() -> some View {
        if let profileImage {
            return profileImage
                .resizable()
                .scaledToFit()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
        } else {
            return Image(systemName: "person.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
        }

    }
}

#Preview {
    EditProfile()
}
