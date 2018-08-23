//
//  AtaqueViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/18/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class AtaqueViewController: UIViewController {

    @IBOutlet weak var atpAtaque: UILabel!
    
    @IBOutlet weak var videoPreviewLayer: UIView!
    var player: AVPlayer!
    var avpController = AVPlayerViewController()
    
    var numVideo: String!

    @IBAction func goStorytelling(_ sender: Any) {
        performSegue(withIdentifier: "Storytelling", sender: self)
    }
    
    func playVideo() {
        
        let number = Int(arc4random_uniform(4))

        if (number == 0) {
            numVideo = "videoBacteria"
        } else if (number == 1) {
            numVideo = "videoMolecula"
        } else if (number == 2) {
            numVideo = "videoRadiacion"
        } else if (number == 3) {
            numVideo = "videoVirus"
        }
        let moviePath = Bundle.main.path(forResource: numVideo, ofType: "mp4")
        if let path = moviePath {
            let url = NSURL.fileURL(withPath: path)
            self.player = AVPlayer(url: url)
            self.avpController = AVPlayerViewController()
            self.avpController.player = self.player
            avpController.view.frame = videoPreviewLayer.frame
            self.addChildViewController(avpController)
            self.view.addSubview(avpController.view)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        playVideo()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
