//
//  SceneDelegate.swift
//  Instagram
//
//  Created by Alim Kuprianov on 14.03.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    private let appCoordinator = AppCoordinator()
    
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = appCoordinator.navigationController
        window?.makeKeyAndVisible()
        
        appCoordinator.start()
    }
}
