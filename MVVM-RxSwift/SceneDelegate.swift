//
//  SceneDelegate.swift
//  MVVM-RxSwift
//
//  Created by chikari kobayashi on 2021/04/04.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinaotor?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        appCoordinator = AppCoordinaotor(window: window)
        appCoordinator?.start()
    }

}

