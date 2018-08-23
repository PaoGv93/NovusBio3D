//
//  TranscripcionViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/17/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit
import AVKit

class TranscripcionViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBAction func playVideo(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "video", ofType: "mp4") {
            let videoURL = URL(fileURLWithPath: path)
            let player = AVPlayer(url: videoURL)
            let playerController = AVPlayerViewController()
            playerController.player = player
            present(playerController, animated: true, completion: {
                player.play()
            })
        }
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
