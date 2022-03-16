//
//  ViewController.swift
//  Aula 07_6
//
//  Created by Jailson Liberato on 15/03/22.
//

import UIKit

class ViewController: UITableViewController {
    
    let frutas = ["Laranja", "Maçã", "Uva", "Limão"]

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
    }
    
    
    
    override func tableView(_ tableView: UITableView,
            numberOfRowsInSection section: Int) -> Int {
        return frutas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = frutas[indexPath.row]

            return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            vc.nome.text = frutas[indexPath.row]
                   navigationController?.pushViewController(vc, animated: true)
               }
    }


}

