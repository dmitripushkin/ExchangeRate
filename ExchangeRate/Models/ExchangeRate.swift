//
//  ExchangeRate.swift
//  ExchangeRate
//
//  Created by Повелитель on 29.09.2021.
//

import Foundation

struct ExchangeRate: Decodable {
    let date: String
    let valute: [String: Valute]
    
    enum CodingKeys: String, CodingKey {
        case date = "Date"
        case valute = "Valute"
    }
}

struct Valute: Decodable {
    let id: String
    let numCode: String
    let charCode: String
    let nominal: Int
    let name: String
    let value: Double
    let previous: Double
    
    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case numCode = "NumCode"
        case charCode = "CharCode"
        case nominal = "Nominal"
        case name = "Name"
        case value = "Value"
        case previous = "Previous"
    }
}

enum Link: String {
    case exchangeRateApi = "https://www.cbr-xml-daily.ru/daily_json.js"
}
