//
//  DetailView.swift
//  Aula 07_4
//
//  Created by Jailson Liberato on 15/03/22.
//


import UIKit

class secondViewController: UIViewController {

    var property: Data?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let property = property {
            print("property: \(property.name)")
        }
        
    }
}
