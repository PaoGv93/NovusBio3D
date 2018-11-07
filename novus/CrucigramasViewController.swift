//
//  CrucigramasViewController.swift
//  novus
//
//  Created by Paola Garzón on 8/6/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit

class CrucigramasViewController: UIViewController {

    @IBOutlet weak var botonReplicacion: UIButton!
    @IBOutlet weak var botonTranscripcion: UIButton!
    @IBOutlet weak var botonTraduccion: UIButton!
    
    
    @IBAction func goReplicacion(_ sender: Any) {
        performSegue(withIdentifier: "goReplicacion", sender: self)
    }
    
    @IBAction func goTranscripcion(_ sender: Any) {
        performSegue(withIdentifier: "goTranscripcion", sender: self)
    }
    
    @IBAction func goTraduccion(_ sender: Any) {
        performSegue(withIdentifier: "goTraduccion", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.applyShadow(botonTranscripcion)
        self.applyShadow(botonReplicacion)
        self.applyShadow(botonTraduccion)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func applyShadow(_ object:AnyObject) {
        object.layer.cornerRadius = 5.0;
        object.layer.shadowRadius = 2
        object.layer.shadowOpacity = 0.2
        object.layer.shadowOffset = CGSize(width: 5, height: 5)
    }

}
