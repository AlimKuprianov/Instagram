//
//  SearchAssembly.swift
//  Instagram
//
//  Created by Alim Kuprianov on 07.04.2022.
//

enum SearchAssembly {
    static func createSearchViewController(coordinator: SearchCoordinatorProtocol? = nil) -> SearchViewController {
        let viewController = SearchViewController()
        let presenter = SearchPresenter()
        
        viewController.output = presenter
        presenter.view = viewController
        presenter.coordinator = coordinator
        
        presenter.searchService = SearchService()
        
        return viewController
    }
}
