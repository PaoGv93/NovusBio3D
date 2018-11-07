//
//  TranscripcionViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/17/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit
import AVKit
import SafariServices

class TranscripcionViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBAction func playVideo(_ sender: Any) {
        
        guard let url = URL(string: "https://www.youtube.com/watch?v=q4_STYCxKHk") else { return }
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
    }


}
