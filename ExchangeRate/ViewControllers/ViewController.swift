//
//  ViewController.swift
//  ExchangeRate
//
//  Created by Повелитель on 29.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTaped(_ sender: Any) {
        NetworkManager.shared.fetch(dataType: ExchangeRate.self, from: Link.exchangeRateApi.rawValue) {
            result in
            switch result {
            case .success(let rate):
                print(rate)
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
}
