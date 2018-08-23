//
//  InicioViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/18/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController {

    
    @IBAction func goAvatar(_ sender: Any) {
        performSegue(withIdentifier: "SelectAvatar", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
