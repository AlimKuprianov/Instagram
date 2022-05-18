//
//  HomeAssembly.swift
//  Instagram
//
//  Created by Alim Kuprianov on 27.03.2022.
//

enum HomeAssembly {
    static func createHomeViewController(coordinator: HomeCoordinatorProtocol? = nil) -> HomeViewController {
        let viewController = HomeViewController()
        let presenter = HomePresenter()
        
        viewController.output = presenter
        presenter.view = viewController
        presenter.coordinator = coordinator
        
        presenter.feedService = FeedService()
        
        return viewController
    }
}
