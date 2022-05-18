//
//  SharePostServiceProtocol.swift
//  Instagram
//
//  Created by Alim Kuprianov on 27.03.2022.
//

import UIKit

protocol SharePostServiceProtocol: AnyObject {
    func sharePost(withImage image: UIImage, caption: String?, completion: @escaping (Error?) -> Void)
}
