//
//  ViewController.swift
//  Aula 07
//
//  Created by Jailson Liberato on 17/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var array = Array<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        array.append("This")
        array.append("That")
        array.append("Wow")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        
        cell?.textLabel?.text = array[indexPath.row]
        
        return cell!
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "makingtransition", sender: array[indexPath.row])
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let svc = segue.destination as! SecondViewController
        svc.str =  sender as! String
    }


}

