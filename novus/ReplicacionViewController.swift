//
//  ReplicacionViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/17/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit
import AVKit
import SafariServices

struct ViewStateVideoReplicacion {
    static var state = false
}

class ReplicacionViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBAction func playVideo(_ sender: Any) {
        
        ViewStateVideoReplicacion.state = true
        guard let url = URL(string: "https://youtu.be/r671Cr0vT-g") else { return }
        let safariViewController = SFSafariViewController(url: url)
        self.present(safariViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.button.layer.cornerRadius = 5.0;
        self.button.layer.shadowRadius = 2
        self.button.layer.shadowOpacity = 0.2
        self.button.layer.shadowOffset = CGSize(width: 5, height: 5)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
