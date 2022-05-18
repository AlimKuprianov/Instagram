//
//  Post.swift
//  Instagram
//
//  Created by Alim Kuprianov on 25.03.2022.
//

import Foundation
import CoreGraphics

struct Post {
    let imageURL: String
    let imageAspectRatio: CGFloat
    let caption: String?
    let timestamp: TimeInterval
    
    var identifier: String?
    var userIdentifier: String?
    var isLiked = false
    var isBookmarked = false
    var likesCount = 0
}

// MARK: - Codable

extension Post: Codable {
    enum CodingKeys: String, CodingKey {
        case imageURL = "image_url"
        case imageAspectRatio = "image_aspect_ratio"
        case caption
        case timestamp
    }
}
