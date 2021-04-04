//
//  RestaurantslListViewModel.swift
//  MVVM-RxSwift
//
//  Created by chikari kobayashi on 2021/04/04.
//

import Foundation
import RxSwift

final class RestaurantsListViewModel {
    let title = "Restaurants"
    
    private let restaurantService: RestaurantServiceProtocol
    
    init(restaurantService: RestaurantServiceProtocol = RestaurantService()) {
        self.restaurantService = restaurantService
    }
    
    func fetchRestaurantViewModels() -> Observable<[RestaurantViewModel]> {
        restaurantService.fetchRestaurants().map { $0.map {
            RestaurantViewModel(restaurant: $0) } }
    }
}
