//
//  Food.swift
//  LhamaFood
//
//  Created by Alexandre Martins on 18/08/24.
//

import Foundation

/** EXAMPLE ➤
 {
     "id": 1,
     "name": "Guacamole Padrão",
     "description": "Guacamole padrão, nem nada de especial",
     "imageUrl": "https://i.panelinha.com.br/i1/bk-6619-guacamole.webp",
     "price": 9.90,
     "protein": 4,
     "calories": 150,
     "carbs": 30
 },
 */
struct Food: Decodable, Identifiable { // Decodable instead of Codable because we dont send anything back, no need to Encodable
    let id: Int
    let name: String
    let description: String
    let imageUrl: String // Must be the exact key of responde
    let price: Double
    let protein: Int
    let calories: Int
    let carbs: Int
}

struct FoodResponse: Decodable { // Helper struct for when our object is not right away in response
    let request: [Food]
}

struct MockData {
    static let mockFood = Food(
        id: 0,
        name: "Mock Guacamole",
        description: "Mock description Mock description Mock description Mock description Mock description",
        imageUrl: "",
        price: 19.90,
        protein: 12,
        calories: 150,
        carbs: 40
    )
    
    static let mockFoodList = [
        mockFood,
        mockFood,
        mockFood,
        mockFood,
    ]
}
