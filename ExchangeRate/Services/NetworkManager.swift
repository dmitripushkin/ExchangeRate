//
//  NetworkManager.swift
//  ExchangeRate
//
//  Created by Повелитель on 30.09.2021.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetchRates() {
        
    }
}
