//
//  AppCoordinator.swift
//  MVVM-RxSwift
//
//  Created by chikari kobayashi on 2021/04/04.
//

import Foundation
import UIKit

class AppCoordinaotor {
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    func start() {
        let viewController = ViewController.instantiate(viewModel: RestaurantsListViewModel())
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
