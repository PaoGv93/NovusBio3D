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

class FirstVideoViewController: UIViewController {

    @IBOutlet weak var botonReplicacion: UIButton!
    @IBOutlet weak var botonTranscripcion: UIButton!
    @IBOutlet weak var botonTraduccion: UIButton!
    
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
        performSegue(withIdentifier: "goSopaLetras", sender: self)
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
