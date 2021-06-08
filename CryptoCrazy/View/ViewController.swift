//
//  ViewController.swift
//  CryptoCrazy
//
//  Created by Mutlu Aydın on 2/12/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Olusturmus oldugumuz cellle baglanti kurma(obje olusturarak)
        let cell = tableView.dequeueReusableCell(withIdentifier: "CrytoCell", for: indexPath) as! CrytoTableViewCell
        
        return cell
    }

}

