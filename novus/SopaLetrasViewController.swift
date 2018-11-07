//
//  SopaLetrasViewController.swift
//  novus
//
//  Created by Paola Garzón on 8/6/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit

class SopaLetrasViewController: UIViewController {
    
    @IBAction func goAtaque(_ sender: Any) {
        performSegue(withIdentifier: "goAtaque", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
