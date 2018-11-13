//
//  FirstVideoViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/12/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//
import AVFoundation
import UIKit
import AVKit

struct ViewStateGeneralDogma {
    static var state = false
}

class FirstVideoViewController: UIViewController {

    @IBOutlet weak var botonReplicacion: UIButton!
    @IBOutlet weak var botonTranscripcion: UIButton!
    @IBOutlet weak var botonTraduccion: UIButton!
    
    //ir a los puntos finales
    @IBAction func irPuntos(_ sender: Any) {
        performSegue(withIdentifier: "irPuntos", sender: self)
    }
    
    @IBAction func goReplicacion(_ sender: Any) {
        performSegue(withIdentifier: "Replicacion", sender: self)
    }
    
    @IBAction func goTranscripcion(_ sender: Any) {
        performSegue(withIdentifier: "Transcripcion", sender: self)
    }
    
    @IBAction func goTraduccion(_ sender: Any) {
        performSegue(withIdentifier: "Traduccion", sender: self)
    }
    
    @IBAction func goSopaLetras(_ sender: Any) {
        if (ViewStateVideoTranscripcion.state == true && ViewStateVideoReplicacion.state == true && ViewStateVideoTraduccion.state == true){
            ViewStateGeneralDogma.state = true
        performSegue(withIdentifier: "goSopaLetras", sender: self)
        } else{
            // create the alert
            let alert = UIAlertController(title: "Error", message: "Debes ver todos los videos.", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.applyShadow(botonTraduccion)
        self.applyShadow(botonReplicacion)
        self.applyShadow(botonTranscripcion)
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
