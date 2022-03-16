//
//  SecondViewController.swift
//  Aula 07_5
//
//  Created by Jailson Liberato on 15/03/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lbl_Name: UILabel!
    @IBOutlet weak var img_View: UIImageView!
    
    var img = UIImage()
    var user_name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl_Name.text = "Hey i am \(user_name)."
        img_View.image = img

    }
    


}
