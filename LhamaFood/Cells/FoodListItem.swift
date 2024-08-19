//
//  FoodListItem.swift
//  LhamaFood
//
//  Created by Alexandre Martins on 18/08/24.
//

import SwiftUI
import Shimmer

struct FoodListItem: View {
    
    let food: Food
    
    var body: some View {
        HStack (spacing: 16) {
            AsyncImage(
                url: URL(string: food.imageUrl),
                content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                },
                placeholder: {
                    Rectangle().fill(Color(.secondarySystemBackground)).shimmering()
                        
                }
            )
            .frame(width: 120, height: 90)
            .cornerRadius(12)

            VStack (alignment: .leading, spacing: 8) {
                Text(food.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(food.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    FoodListItem(food:  MockData.mockFood)
}
