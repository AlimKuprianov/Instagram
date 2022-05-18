//
//  EditProfileServiceProtocol.swift
//  Instagram
//
//  Created by Alim Kuprianov on 27.03.2022.
//

import UIKit

protocol EditProfileServiceProtocol: AnyObject {
    func updateUser(
        currentUsername: String,
        fullName: String?,
        username: String,
        website: String?,
        bio: String?,
        profileImage: UIImage?,
        completion: @escaping (EditProfileServiceResult) -> Void)
}

enum EditProfileServiceResult {
    case usernameExist
    case success
    case failure
}
