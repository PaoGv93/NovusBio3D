//
//  ViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/7/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image1: UIImageView!//1PVO
    @IBOutlet weak var image2: UIImageView!//4V49
    @IBOutlet weak var image3: UIImageView!//1EVV
    @IBOutlet weak var image4: UIImageView!//4Q5S
    @IBOutlet weak var image5: UIImageView!//2O8K
    @IBOutlet weak var image6: UIImageView!//1TAU
    @IBOutlet weak var image7: UIImageView!//1SUU
    
    var myLabel = UILabel()
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest:AvatarViewController = (segue.destination as? AvatarViewController)!
        dest.finalName = myLabel.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(self.tapGesture1))
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(self.tapGesture2))
        let tapGesture3 = UITapGestureRecognizer(target: self, action: #selector(self.tapGesture3))
        let tapGesture4 = UITapGestureRecognizer(target: self, action: #selector(self.tapGesture4))
        let tapGesture5 = UITapGestureRecognizer(target: self, action: #selector(self.tapGesture5))
        let tapGesture6 = UITapGestureRecognizer(target: self, action: #selector(self.tapGesture6))
        let tapGesture7 = UITapGestureRecognizer(target: self, action: #selector(self.tapGesture7))
        
        image1.addGestureRecognizer(tapGesture1)
        image2.addGestureRecognizer(tapGesture2)
        image3.addGestureRecognizer(tapGesture3)
        image4.addGestureRecognizer(tapGesture4)
        image5.addGestureRecognizer(tapGesture5)
        image6.addGestureRecognizer(tapGesture6)
        image7.addGestureRecognizer(tapGesture7)

        /*image1.loadGif(name: "1PVO")
        image2.loadGif(name: "4V49")
        image3.loadGif(name: "1EVV")
        image4.loadGif(name: "4Q5S")
        image5.loadGif(name: "2O8K")
        image6.loadGif(name: "1TAU")
        image7.loadGif(name: "1SUU")*/
        
        self.applyRoundCorner(image1)
        self.applyRoundCorner(image2)
        self.applyRoundCorner(image3)
        self.applyRoundCorner(image4)
        self.applyRoundCorner(image5)
        self.applyRoundCorner(image6)
        self.applyRoundCorner(image7)
        
        image1.clipsToBounds = true
        image2.clipsToBounds = true
        image3.clipsToBounds = true
        image4.clipsToBounds = true
        image5.clipsToBounds = true
        image6.clipsToBounds = true
        image7.clipsToBounds = true
    }
    
    @objc func tapGesture1(){
        myLabel.text = "1PVO"
        performSegue(withIdentifier: "Avatar", sender: self)
    }
    
    @objc func tapGesture2(){
        myLabel.text = "4V49"
        performSegue(withIdentifier: "Avatar", sender: self)
    }
    
    @objc func tapGesture3(){
        myLabel.text = "1EVV"
        performSegue(withIdentifier: "Avatar", sender: self)
    }
    
    @objc func tapGesture4(){
        myLabel.text = "4Q5S"
        performSegue(withIdentifier: "Avatar", sender: self)
    }
    
    @objc func tapGesture5(){
        myLabel.text = "2O8K"
        performSegue(withIdentifier: "Avatar", sender: self)
    }
    
    @objc func tapGesture6(){
        myLabel.text = "1TAU"
        performSegue(withIdentifier: "Avatar", sender: self)
    }
    
    @objc func tapGesture7(){
        myLabel.text = "1SUU"
        performSegue(withIdentifier: "Avatar", sender: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func applyRoundCorner(_ object:AnyObject) {
        //Boton circular
        object.layer.cornerRadius = object.size.width / 2.0
        object.layer.masksToBounds = true
        
        //Sombra
        object.layer.shadowRadius = 3
        object.layer.shadowOpacity = 0.8
        object.layer.shadowOffset = CGSize(width: 5, height: 5)
     }
    
}

