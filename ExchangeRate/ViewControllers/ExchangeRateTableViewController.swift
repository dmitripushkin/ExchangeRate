//
//  ExchangeRateTableViewController.swift
//  ExchangeRate
//
//  Created by Повелитель on 30.09.2021.
//

import UIKit

class ExchangeRateTableViewController: UITableViewController {

//    private var rates: [Valute] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
        
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 20
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RateViewCell
      
        
        return cell
    }
}
