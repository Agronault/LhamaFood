//
//  FoodListViewModel.swift
//  LhamaFood
//
//  Created by Alexandre Martins on 18/08/24.
//

import SwiftUI

final class FoodListViewModel: ObservableObject {
    @Published var foods: [Food]? = nil
    @Published var alertItem: AlertItem?
    @Published var isShowingFood = false
    @Published var selectedFood: Food?
    
    func getFoods() {
        NetworkManager.shared.getFoods { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let foods): self.foods = foods
                case .failure(let error):
                    switch error {
                    case .invalidData: self.alertItem = AlertContext.invalidData
                    case .invalidUrl: self.alertItem = AlertContext.invalidUrl
                    case .invalidResponse: self.alertItem = AlertContext.invalidResponse
                    case .unableToComplete: self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
