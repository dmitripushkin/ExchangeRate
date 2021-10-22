//
//  ExchangeRate.swift
//  ExchangeRate
//
//  Created by Повелитель on 29.09.2021.
//

import Foundation

struct ExchangeRates: Decodable {
    let date: String?
    let valute: [String: Valute]?
    
    enum CodingKeys: String, CodingKey {
        case date = "Date"
        case valute = "Valute"
    }
}

struct Valute: Decodable {
    let charCode: String?
    let nominal: Int?
    let name: String?
    let value: Double?
    
    enum CodingKeys: String, CodingKey {
        case charCode = "CharCode"
        case nominal = "Nominal"
        case name = "Name"
        case value = "Value"
    }
}

enum Link: String {
    case exchangeRateApi = "https://www.cbr-xml-daily.ru/daily_json.js"
}

