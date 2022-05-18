//
//  FeedPost.swift
//  Instagram
//
//  Created by Alim Kuprianov on 27.03.2022.
//

import Foundation

struct FeedPost {
    let userIdentifier: String
    let timestamp: TimeInterval
    
    var postIdentifier: String?
}

// MARK: - Codable

extension FeedPost: Codable {
    enum CodingKeys: String, CodingKey {
        case userIdentifier = "user_identifier"
        case timestamp
    }
}
