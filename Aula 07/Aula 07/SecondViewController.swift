//
//  SecondViewController.swift
//  Aula 07
//
//  Created by Jailson Liberato on 17/03/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var str: String = String();

    @IBOutlet weak var lblPalada: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblPalada?.text = str
        
    }


}
