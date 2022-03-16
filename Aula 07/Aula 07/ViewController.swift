//
//  ViewController.swift
//  Aula 07
//
//  Created by Jailson Liberato on 15/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    let tableViewData = Array(repeating: "Item", count: 5)

    
    override func viewDidLoad() {
        super.viewDidLoad()
           
           tableView.register(UITableViewCell.self,
                              forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self

    }
    
    @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewData.count
    }
    
    @objc(tableView:cellForRowAtIndexPath:) func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell",
                                                 for: indexPath)
        cell.textLabel?.text = self.tableViewData[indexPath.row]
        return cell
    }
    
    
}

