//
//  NetworkManager.swift
//  LhamaFood
//
//  Created by Alexandre Martins on 18/08/24.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    static let baseUrl = "https://raw.githubusercontent.com/Agronault/RandomMockData/main/lhama/lhamafood/"
    private let foodsUrl = baseUrl + "foods.json"
    
    private init() {}
    
    func getFoods(completed: @escaping (Result<[Food], LhamaError>) -> Void) {
        guard let url = URL(string: foodsUrl) else {
            completed(.failure(.invalidUrl))
            return
        }
        
        let task = URLSession.shared.dataTask(
            with: URLRequest(url: url)
        ) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response
                    as? HTTPURLResponse, response.statusCode == 200
            else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decoderResponse = try decoder.decode(
                    FoodResponse.self, from: data
                )
                completed(.success(decoderResponse.request))
            } catch {
                completed(.failure(.invalidData))
                return
            }
        }
        
        task.resume()
    }
}
