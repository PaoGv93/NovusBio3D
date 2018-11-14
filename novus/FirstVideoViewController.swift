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
import SafariServices

struct ViewStateGeneralDogma {
    static var transcripcionState = false
    static var traduccionState = false
    static var ReplicacionState = false
    static var Generalstate = false
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
        
        ViewStateGeneralDogma.ReplicacionState = true
        guard let url = URL(string: "https://www.youtube.com/watch?v=QXlbLoVU8Cc&t=13s") else { return }
        let safariViewController = SFSafariViewController(url: url)
        self.present(safariViewController, animated: true, completion: nil)
    }
    
    @IBAction func goTranscripcion(_ sender: Any) {
        
        ViewStateGeneralDogma.transcripcionState = true
        guard let url = URL(string: "https://www.youtube.com/watch?v=q4_STYCxKHk") else { return }
        let safariViewController = SFSafariViewController(url: url)
        self.present(safariViewController, animated: true, completion: nil)
    }
    
    @IBAction func goTraduccion(_ sender: Any) {
        
        ViewStateGeneralDogma.traduccionState = true
        guard let url = URL(string: "https://www.youtube.com/watch?v=xiAXUw0T-Sw&t=1s") else { return }
        let safariViewController = SFSafariViewController(url: url)
        self.present(safariViewController, animated: true, completion: nil)
    }
    
    @IBAction func goSopaLetras(_ sender: Any) {
        if (ViewStateGeneralDogma.transcripcionState == true && ViewStateGeneralDogma.traduccionState == true && ViewStateGeneralDogma.ReplicacionState == true){
            ViewStateGeneralDogma.Generalstate = true
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
