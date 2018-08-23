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

class SecondVideoViewController: UIViewController {

    @IBOutlet weak var boton1: UIButton!
    @IBOutlet weak var boton2: UIButton!
    @IBOutlet weak var boton3: UIButton!
    @IBOutlet weak var atpSecondVideo: UILabel!
    
    @IBAction func goFinal(_ sender: Any) {
        performSegue(withIdentifier: "FinApp", sender: self)
    }
    
    @IBAction func playVideo(_ sender: Any) {
        guard let url = URL(string: "https://www.youtube.com/watch?v=9VBQB12Higk") else { return }
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
