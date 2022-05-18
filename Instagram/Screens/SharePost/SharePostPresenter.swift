//
//  SharePostPresenter.swift
//  Instagram
//
//  Created by Alim Kuprianov on 07.04.2022.
//

import UIKit

final class SharePostPresenter {
    // MARK: Properties
    
    weak var view: SharePostViewControllerProtocol?
    weak var coordinator: SharePostCoordinatorProtocol?
    
    var sharePostService: SharePostServiceProtocol?
    
    var image: UIImage?
}

// MARK: - SharePostView Output

extension SharePostPresenter: SharePostViewControllerOutputProtocol {
    func viewDidLoad() {
        guard let image = image else { return }
        
        view?.setImage(image)
    }
    
    func didTapShareButton(withImage image: UIImage, caption: String?) {
        view?.showLoadingView()
        
        let croppedImage = image.instagramCrop() ?? image
        
        sharePostService?.sharePost(withImage: croppedImage, caption: caption) { [weak self] error in
            guard error == nil else {
                self?.view?.hideLoadingView {
                    self?.view?.showAlert()
                }

                return
            }
            
            self?.view?.hideLoadingView()
            
            self?.coordinator?.closeSharePostViewController()
        }
    }
}
