//
//  ImageUploader.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 29.04.2024.
//

import UIKit
//import Firebase

struct ImageUploader {

    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }

        let filename = NSUUID().uuidString
//        let ref = Storage.storage().reference(withPath: "/profile_images/\(filename)")
//        ref.putData(imageData, metadata: nil) { _, error in
//            if let error {
//                print("Failed to upload image with error \(error.localizedDescription)")
//            }
//
//            ref.downloadURL { url, _ in
//                guard let imageURL = url?.adsoluteString else { return }
//                completion(imageURL)
//            }
//        }
    }
}
