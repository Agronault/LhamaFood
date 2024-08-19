//
//  FoodDetails.swift
//  LhamaFood
//
//  Created by Alexandre Martins on 18/08/24.
//

import SwiftUI

struct FoodDetails: View {
    let food: Food
    @Binding var isShowing: Bool

    var body: some View {
        VStack {
            AsyncImage(
                url: URL(string: food.imageUrl),
                content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                },
                placeholder: {
                    Rectangle().fill(Color(.secondarySystemBackground)).shimmering()
                        
                }
            ).frame(height: 200)
            
            Spacer()
            
            VStack {
                Text(food.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text(food.description)
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .font(.body).padding()
                HStack {
                    Spacer()
                    getInfoLabel(label: "Cal", data: food.calories)
                    Spacer()
                    getInfoLabel(label: "Carb", data: food.carbs)
                    Spacer()
                    getInfoLabel(label: "Prot", data: food.protein)
                    Spacer()
                }.padding()
            }.padding()
            
            Spacer()
            
            Button(
                action: {},
                label: {
                    Text("$\(food.price, specifier: "%.2f") - Pedir Agora")
                }
            )
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .accentColor(.lhamaPrimary)
            
            Spacer()
        }
        .frame(width: 340, height: 560)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{
            withAnimation {
                isShowing = false
            }
        } label: {
            ZStack {
                Circle().fill(.regularMaterial).frame(width: 40, height: 40)
                Image(systemName: "xmark").foregroundColor(.lhamaPrimary)
            }
        }.padding(), alignment: .topTrailing)
    }
    
    func getInfoLabel(label: String, data: Int) -> some View {
        VStack (spacing: 5) {
            Text(label)
                .font(.title3)
                .foregroundStyle(.secondary)
                .fontWeight(.bold)
            Text("\(data)")
                .font(.headline)
                .foregroundStyle(.secondary)
                .italic()
        }
    }
}

#Preview {
    FoodDetails(food: MockData.mockFood, isShowing: .constant(true))
}
