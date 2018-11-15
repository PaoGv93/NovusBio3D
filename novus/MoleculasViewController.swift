//
//  moleculasViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/12/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit

struct ViewStateGeneralCelulas {
    static var state = false
}

class MoleculasViewController: UIViewController {

    @IBOutlet weak var botonAnimal: UIButton!
    @IBOutlet weak var botonVegetal: UIButton!
    @IBOutlet weak var botonBacteria: UIButton!
    
    //ir a puntos finales
    @IBAction func irPuntos(_ sender: Any) {
        performSegue(withIdentifier: "irPuntos", sender: self)
    }
    
    @IBAction func goFirstVideo(_ sender: Any) {
        if(ViewStateCelulaVegetal.state == true && ViewStateCelulaAnimal.state == true && ViewStateCelulaBacteriana.state == true){
            ViewStateGeneralCelulas.state = true
        performSegue(withIdentifier: "FirstVideo", sender: self)
        } else{
            // create the alert
            let alert = UIAlertController(title: "Error", message: "No has completado todo.", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
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
