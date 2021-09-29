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
        guard let url = URL(string: Link.exchangeRateApi.rawValue) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let rate = try JSONDecoder().decode(ExchangeRate.self, from: data)
                print(rate)
            } catch let error {
                print(error.localizedDescription)
            }
             
        }.resume()
        
    }
    
}
