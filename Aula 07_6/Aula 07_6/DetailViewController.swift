//
//  DetailController.swift
//  Aula 07_6
//
//  Created by Jailson Liberato on 16/03/22.
//

import UIKit

class DetailViewController: UIViewController
{
    var text:String = ""

    @IBOutlet weak var nome: UILabel!
    
    override func viewDidLoad()
    {
    super.viewDidLoad()

    nome?.text = text
    }
}
