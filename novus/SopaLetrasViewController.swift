//
//  SopaLetrasViewController.swift
//  novus
//
//  Created by Paola Garzón on 8/6/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit

struct ViewStateRompecabezas {
    static var state = false
}

class SopaLetrasViewController: UIViewController {
    
    //ir a puntos finales
    @IBAction func irPuntos(_ sender: Any) {
        performSegue(withIdentifier: "irPuntos", sender: self)
    }
    
    @IBAction func goAtaque(_ sender: Any) {
        ViewStateRompecabezas.state = true
        performSegue(withIdentifier: "goAtaque", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
