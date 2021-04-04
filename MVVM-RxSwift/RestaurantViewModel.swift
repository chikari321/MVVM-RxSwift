//
//  RestaurantViewModel.swift
//  MVVM-RxSwift
//
//  Created by chikari kobayashi on 2021/04/04.
//

import Foundation

struct RestaurantViewModel {
    
    private let restaurant: Restaurant
    
    var displayText: String {
        return restaurant.name + " - " + restaurant.cuisine.rawValue.capitalized
    }
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
}
