//
//  ExchangeRate.swift
//  ExchangeRate
//
//  Created by Повелитель on 29.09.2021.
//

import Foundation

struct ExchangeRate: Decodable {
    let currentDate: String
    let previousDate: String
    let previousURL: String
    let valute: [Valute]
}

struct Valute: Decodable {
    let abbreviation: String
    let info: [Info]
}

struct Info: Decodable {
    let numCode: String
    let charCode: String
    let nominal: String
    let name: String
    let value: String
}

enum Link: String {
    case exchangeRateApi = "https://www.cbr-xml-daily.ru/daily_json.js"
}
