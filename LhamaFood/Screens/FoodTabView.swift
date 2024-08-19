//
//  ContentView.swift
//  LhamaFood
//
//  Created by Alexandre Martins on 18/08/24.
//

import SwiftUI

struct FoodTabView: View {
    var body: some View {
        TabView {
            FoodListView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Início")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                    Text("Pedidos")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Conta")
                }
        }
        .accentColor(Color("lhamaPrimary"))
    }
}

#Preview {
    FoodTabView()
}
