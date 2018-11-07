//
//  moleculasViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/12/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit

class MoleculasViewController: UIViewController {

    @IBOutlet weak var botonAnimal: UIButton!
    @IBOutlet weak var botonVegetal: UIButton!
    @IBOutlet weak var botonBacteria: UIButton!
    
    // Tiempos de las moleculas
    @IBOutlet weak var tiempoAnimal: UILabel!
    var tiempoA = String()

    @IBOutlet weak var tiempoVegetal: UILabel!
    var tiempoV = String()

    @IBOutlet weak var tiempoBacteria: UILabel!
    var tiempoB = String()
    
    @IBAction func goFirstVideo(_ sender: Any) {
        performSegue(withIdentifier: "FirstVideo", sender: self)
    }
    
    @IBAction func goCelulaAnimal(_ sender: Any) {
        performSegue(withIdentifier: "CelulaAnimal", sender: self)
    }
    
    @IBAction func goCelulaVegetal(_ sender: Any) {
        performSegue(withIdentifier: "CelulaVegetal", sender: self)
    }
    
    @IBAction func goCelulaBacteriana(_ sender: Any) {
        performSegue(withIdentifier: "CelulaBacteriana", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.applyShadow(botonAnimal)
        self.applyShadow(botonVegetal)
        self.applyShadow(botonBacteria)

        tiempoAnimal.text = tiempoA
        tiempoVegetal.text = tiempoV
        tiempoBacteria.text = tiempoB

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func applyShadow(_ object:AnyObject) {
        object.layer.cornerRadius = 5.0;
        object.layer.shadowRadius = 2
        object.layer.shadowOpacity = 0.2
        object.layer.shadowOffset = CGSize(width: 5, height: 5)
    }
    
}
