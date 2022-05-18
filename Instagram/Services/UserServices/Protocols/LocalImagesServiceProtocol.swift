//
//  LocalImagesServiceProtocol.swift
//  Instagram
//
//  Created by Alim Kuprianov on 27.03.2022.
//

import UIKit

protocol LocalImagesServiceProtocol: AnyObject {
    var isEmpty: Bool { get }
    
    func fetchImagesDescendingByDate(targetSize: CGSize, completion: @escaping ([UIImage]?) -> Void)
    func requestNextImages(targetSize: CGSize, completion: @escaping ([UIImage]?) -> Void)
    func getImage(at index: Int, targetSize: CGSize, completion: @escaping (UIImage?) -> Void)
    func getMaximumSizeImage(at index: Int, completion: @escaping (UIImage?) -> Void)
}
