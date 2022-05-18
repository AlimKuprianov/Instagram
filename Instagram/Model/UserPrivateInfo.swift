//
//  UserPrivateInfo.swift
//  Instagram
//
//  Created by Alim Kuprianov on 25.03.2022.
//

import Foundation

struct UserPrivateInfo {
    let email: String
    let gender: String?
    let phone: String?
}

// MARK: - Codable

extension UserPrivateInfo: Codable {
    enum CodingKeys: String, CodingKey {
        case email
        case gender
        case phone
    }
}
