//
//  ProfilePhotoSelector.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 28.04.2024.
//

import SwiftUI

struct ProfilePhotoSelector: View {

    @State private var imagePickerPresented = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    @ObservedObject var viewModel = AuthViewModel()

    var body: some View {
        VStack {
            Button{
                imagePickerPresented.toggle()
            } label: {
                if let profileImage {
                    profileImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())
                } else {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .padding(.top, 44)
                        .foregroundStyle(.black)
                }
            }
            .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage) {
                ImagePicker(image: $selectedImage)
            }
            Text(profileImage == nil ? "Select a profile photo" : "Great! Tap below to continue")
                .font(.system(size: 20, weight: .semibold))
            if let image = selectedImage {
                Button {
                    viewModel.uploadProfileImage()
                } label: {
                    Text("Continue")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(width: 340, height: 50)
                        .background(.blue)
                        .clipShape(Capsule())
                        .padding()
                }
                .shadow(color: .gray, radius: 10)
                .padding(.top, 24)
            }

            Spacer()
        }
        .navigationBarBackButtonHidden()
    }

    private func loadImage() {
        guard let selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
}

#Preview {
    ProfilePhotoSelector()
}
