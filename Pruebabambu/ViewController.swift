//
//  ViewController.swift
//  Pruebabambu
//
//  Created by luis hector hernandez godinez  on 12/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btnMenu: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnMenu.layer.cornerRadius = 10
    }

    @IBAction func btnActionMenu(_ sender: Any) {
    }
    
}

