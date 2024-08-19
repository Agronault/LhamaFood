//
//  FoodListView.swift
//  LhamaFood
//
//  Created by Alexandre Martins on 18/08/24.
//

import SwiftUI

struct FoodListView: View {
    @StateObject var vm = FoodListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach(vm.foods ?? MockData.mockFoodList) { food in
                        FoodListItem(food: food)
                            .redacted(
                                reason: vm.foods == nil ? .placeholder : []
                            )
                            .onTapGesture {
                                withAnimation {
                                    vm.isShowingFood = true
                                    vm.selectedFood = food
                                }
                            }
                    }
                }
                .refreshable {
                    vm.getFoods()
                }
                .navigationTitle("Início")
                .disabled(vm.isShowingFood)
            }
            .onAppear{
                vm.getFoods()
            }
            .alert(item: $vm.alertItem) { alertItem in
                Alert(
                    title: alertItem.title,
                    message: alertItem.message,
                    dismissButton: alertItem.dismissButton
                )
            }
            .blur(radius: vm.isShowingFood ? 16 : 0)
            
            if vm.isShowingFood {
                FoodDetails(food: vm.selectedFood ?? MockData.mockFood, isShowing: $vm.isShowingFood).transition(.scale)
            }
        }
    }
}

#Preview {
    FoodListView()
}
