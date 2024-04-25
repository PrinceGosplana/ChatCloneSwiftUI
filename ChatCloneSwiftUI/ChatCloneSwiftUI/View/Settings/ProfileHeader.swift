//
//  ProfileHeader.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import SwiftUI

struct ProfileHeader: View {

    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?

    var body: some View {
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
    }

    private func loadImage() {
        guard let selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
}

#Preview {
    ProfileHeader()
}
