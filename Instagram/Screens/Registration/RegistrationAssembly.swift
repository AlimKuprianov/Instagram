//
//  RegistrationAssembly.swift
//  Instagram
//
//  Created by Alim Kuprianov on 27.03.2022.
//

enum RegistrationAssembly {
    static func createRegistrationViewController(
        coordinator: RegistrationCoordinatorProtocol
    ) -> RegistrationViewController {
        let viewController = RegistrationViewController()
        let presenter = RegistrationPresenter()
        
        viewController.output = presenter
        presenter.view = viewController
        presenter.coordinator = coordinator
        
        presenter.registrationService = RegistrationService()
        
        return viewController
    }
}
