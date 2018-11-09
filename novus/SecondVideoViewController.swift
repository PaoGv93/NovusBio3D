//
//  SecondVideoViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/17/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit
import AVKit
import SafariServices

struct ViewStateGeneralCasos {
    static var state = false
    static var stateAnemia = false
    static var stateLinch = false
    static var stateHerpes = false
}

class SecondVideoViewController: UIViewController {

    @IBOutlet weak var boton1: UIButton!
    @IBOutlet weak var boton2: UIButton!
    @IBOutlet weak var boton3: UIButton!
    
    @IBAction func goFinal(_ sender: Any) {
        if(ViewStateGeneralCasos.stateAnemia == true && ViewStateGeneralCasos.stateLinch == true && ViewStateGeneralCasos.stateHerpes == true){
            ViewStateGeneralCasos.state = true
        performSegue(withIdentifier: "FinApp", sender: self)
        } else{
            // create the alert
            let alert = UIAlertController(title: "Error", message: "Debes ver todos los videos.", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func playVideoAnemia(_ sender: Any) {
        
        ViewStateGeneralCasos.stateAnemia = true
        
        guard let url = URL(string: "https://www.youtube.com/watch?v=hs7KdV_BLss") else { return }
        let safariViewController = SFSafariViewController(url: url)
        self.present(safariViewController, animated: true, completion: nil)
    }
    
    @IBAction func playVideoSindrome(_ sender: Any) {
        
        ViewStateGeneralCasos.stateLinch = true

        guard let url = URL(string: "https://www.youtube.com/watch?v=pyFlCVoV79Y") else { return }
        let safariViewController = SFSafariViewController(url: url)
        self.present(safariViewController, animated: true, completion: nil)
    }
    
    @IBAction func playVideoHerpes(_ sender: Any) {
        
        ViewStateGeneralCasos.stateHerpes = true

        guard let url = URL(string: "https://www.youtube.com/watch?v=GCEKJrJ78T4") else { return }
        let safariViewController = SFSafariViewController(url: url)
        self.present(safariViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.applyShadow(boton1)
        self.applyShadow(boton2)
        self.applyShadow(boton3)
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
