//
//  ViewController.swift
//  Aula 8
//
//  Created by Jailson Liberato on 18/03/22.
//

import UIKit

class FavoriteViewController: UIViewController {

  
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lbl.text = "Favorite"
    }


}

