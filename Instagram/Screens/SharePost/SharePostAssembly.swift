//
//  SharePostAssembly.swift
//  Instagram
//
//  Created by Alim Kuprianov on 07.04.2022.
//

import UIKit

enum SharePostAssembly {
    static func createSharePostViewController(
        image: UIImage,
        coordinator: SharePostCoordinatorProtocol? = nil
    )-> SharePostViewController {
        let viewController = SharePostViewController()
        let presenter = SharePostPresenter()
        
        viewController.output = presenter
        presenter.view = viewController
        presenter.coordinator = coordinator
        
        presenter.sharePostService = SharePostService()
        
        presenter.image = image
        
        return viewController
    }
}
