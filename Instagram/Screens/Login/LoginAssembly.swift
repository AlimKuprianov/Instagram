//
//  LoginAssembly.swift
//  Instagram
//
//  Created by Alim Kuprianov on 27.03.2022.
//

enum LoginAssembly {
    static func createLoginViewController(coordinator: LoginCoordinatorProtocol? = nil) -> LoginViewController {
        let viewController = LoginViewController()
        let presenter = LoginPresenter()
        
        viewController.output = presenter
        presenter.view = viewController
        presenter.coordinator = coordinator
        
        presenter.loginService = LoginService()
        
        return viewController
    }
}
