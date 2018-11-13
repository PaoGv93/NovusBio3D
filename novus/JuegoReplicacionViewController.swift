
//
//  juegoViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/12/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit

class JuegoReplicacionViewController: UIViewController {
    
    @IBOutlet weak var Uno1: UITextField!
    @IBOutlet weak var Uno2: UITextField!
    @IBOutlet weak var Uno3: UITextField!
    @IBOutlet weak var Uno4: UITextField!
    @IBOutlet weak var Uno5: UITextField!
    @IBOutlet weak var Uno6: UITextField!
    @IBOutlet weak var Dos1: UITextField!
    @IBOutlet weak var Dos2: UITextField!
    @IBOutlet weak var Dos3: UITextField!
    @IBOutlet weak var Dos4: UITextField!
    @IBOutlet weak var Dos5: UITextField!
    @IBOutlet weak var Dos6: UITextField!
    @IBOutlet weak var Dos7: UITextField!
    @IBOutlet weak var Dos8: UITextField!
    @IBOutlet weak var Tres1: UITextField!
    @IBOutlet weak var Tres2: UITextField!
    @IBOutlet weak var Tres3: UITextField!
    @IBOutlet weak var Cuatro1: UITextField!
    @IBOutlet weak var Cuatro2: UITextField!
    @IBOutlet weak var Cuatro3: UITextField!
    @IBOutlet weak var Cuatro4: UITextField!
    @IBOutlet weak var Cuatro5: UITextField!
    @IBOutlet weak var Cuatro6: UITextField!
    @IBOutlet weak var Cuatro7: UITextField!
    @IBOutlet weak var Cuatro8: UITextField!
    @IBOutlet weak var Cuatro9: UITextField!
    @IBOutlet weak var Cuatro10: UITextField!
    @IBOutlet weak var Cuatro11: UITextField!
    @IBOutlet weak var Cuatro12: UITextField!
    @IBOutlet weak var Cuatro13: UITextField!
    @IBOutlet weak var Cinco1: UITextField!
    @IBOutlet weak var Cinco2: UITextField!
    @IBOutlet weak var Cinco3: UITextField!
    @IBOutlet weak var Cinco4: UITextField!
    @IBOutlet weak var Cinco5: UITextField!
    @IBOutlet weak var Cinco6: UITextField!
    @IBOutlet weak var Cinco7: UITextField!
    @IBOutlet weak var Seis1: UITextField!
    @IBOutlet weak var Seis2: UITextField!
    @IBOutlet weak var Seis3: UITextField!
    @IBOutlet weak var Seis4: UITextField!
    @IBOutlet weak var Seis5: UITextField!
    @IBOutlet weak var Seis6: UITextField!
    @IBOutlet weak var Seis7: UITextField!
    @IBOutlet weak var Siete1: UITextField!
    @IBOutlet weak var Siete2: UITextField!
    @IBOutlet weak var Siete3: UITextField!
    
    
    @IBAction func checar(_ sender: Any) {
        
        //Si todos son correctos entonces te regresa al menú
        if(Uno1.text == "l" && Uno2.text == "i" && Uno3.text == "g" && Uno4.text == "a" && Uno5.text == "s" && Uno6.text == "a" && Dos1.text == "h" && Dos2.text == "e" && Dos3.text == "l" && Dos4.text == "i" && Dos5.text == "c" && Dos6.text == "a" && Dos7.text == "s" && Dos8.text == "a" && Tres1.text == "s" && Tres2.text == "s" && Tres3.text == "b" && Cuatro1.text == "t" && Cuatro2.text == "o" && Cuatro3.text == "p" && Cuatro4.text == "o" && Cuatro5.text == "i" && Cuatro6.text == "s" && Cuatro7.text == "o" && Cuatro8.text == "m" && Cuatro9.text == "e" && Cuatro10.text == "r" && Cuatro11.text == "a" && Cuatro12.text == "s" && Cuatro13.text == "a" && Cinco1.text == "o" && Cinco2.text == "k" && Cinco3.text == "a" && Cinco4.text == "s" && Cinco5.text == "a" && Cinco6.text == "k" && Cinco7.text == "i" && Seis1.text == "p" && Seis2.text == "r" && Seis3.text == "i" && Seis4.text == "m" && Seis5.text == "a" && Seis6.text == "s" && Seis7.text == "a" && Siete1.text == "a" && Siete2.text == "d" && Siete3.text == "n"){
            performSegue(withIdentifier: "goBack", sender: self)
        }
        
        //los correctos
        if(Uno1.text == "l" && Uno2.text == "i" && Uno3.text == "g" && Uno4.text == "a" && Uno5.text == "s" && Uno6.text == "a"){
            Uno1.backgroundColor = .white
            Uno2.backgroundColor = .white
            Uno3.backgroundColor = .white
            Uno4.backgroundColor = .white
            Uno5.backgroundColor = .white
            Uno6.backgroundColor = .white
        }
        if(Dos1.text == "h" && Dos2.text == "e" && Dos3.text == "l" && Dos4.text == "i" && Dos5.text == "c" && Dos6.text == "a" && Dos7.text == "s" && Dos8.text == "a"){
            Dos1.backgroundColor = .white
            Dos2.backgroundColor = .white
            Dos3.backgroundColor = .white
            Dos4.backgroundColor = .white
            Dos5.backgroundColor = .white
            Dos6.backgroundColor = .white
            Dos7.backgroundColor = .white
            Dos8.backgroundColor = .white
        }
        if(Tres1.text == "s" && Tres2.text == "s" && Tres3.text == "b"){
            Tres1.backgroundColor = .white
            Tres2.backgroundColor = .white
            Tres3.backgroundColor = .white
        }
        if(Cuatro1.text == "t" && Cuatro2.text == "o" && Cuatro3.text == "p" && Cuatro4.text == "o" && Cuatro5.text == "i" && Cuatro6.text == "s" && Cuatro7.text == "o" && Cuatro8.text == "m" && Cuatro9.text == "e" && Cuatro10.text == "r" && Cuatro11.text == "a" && Cuatro12.text == "s" && Cuatro13.text == "a"){
            Cuatro1.backgroundColor = .white
            Cuatro2.backgroundColor = .white
            Cuatro3.backgroundColor = .white
            Cuatro4.backgroundColor = .white
            Cuatro5.backgroundColor = .white
            Cuatro6.backgroundColor = .white
            Cuatro7.backgroundColor = .white
            Cuatro8.backgroundColor = .white
            Cuatro9.backgroundColor = .white
            Cuatro10.backgroundColor = .white
            Cuatro11.backgroundColor = .white
            Cuatro12.backgroundColor = .white
            Cuatro13.backgroundColor = .white
        }
        if(Cinco1.text == "o" && Cinco2.text == "k" && Cinco3.text == "a" && Cinco4.text == "s" && Cinco5.text == "a" && Cinco6.text == "k" && Cinco7.text == "i"){
            Cinco1.backgroundColor = .white
            Cinco2.backgroundColor = .white
            Cinco3.backgroundColor = .white
            Cinco4.backgroundColor = .white
            Cinco5.backgroundColor = .white
            Cinco6.backgroundColor = .white
            Cinco7.backgroundColor = .white
        }
        if(Seis1.text == "p" && Seis2.text == "r" && Seis3.text == "i" && Seis4.text == "m" && Seis5.text == "a" && Seis6.text == "s" && Seis7.text == "a"){
            Seis1.backgroundColor = .white
            Seis2.backgroundColor = .white
            Seis3.backgroundColor = .white
            Seis4.backgroundColor = .white
            Seis5.backgroundColor = .white
            Seis6.backgroundColor = .white
            Seis7.backgroundColor = .white
        }
        if(Siete1.text == "a" && Siete2.text == "d" && Siete3.text == "n"){
            Siete1.backgroundColor = .white
            Siete2.backgroundColor = .white
            Siete3.backgroundColor = .white
        }
        
        // Para los que esan mal
        if(Uno1.text != "l" || Uno2.text != "i" || Uno3.text != "g" || Uno4.text != "a" || Uno5.text != "s" || Uno6.text != "a"){
            Uno1.backgroundColor = .red
            Uno2.backgroundColor = .red
            Uno3.backgroundColor = .red
            Uno4.backgroundColor = .red
            Uno5.backgroundColor = .red
            Uno6.backgroundColor = .red
        }
        if(Dos1.text != "h" || Dos2.text != "e" || Dos3.text != "l" || Dos4.text != "i" || Dos5.text != "c" || Dos6.text != "a" || Dos7.text != "s" || Dos8.text != "a"){
            Dos1.backgroundColor = .red
            Dos2.backgroundColor = .red
            Dos3.backgroundColor = .red
            Dos4.backgroundColor = .red
            Dos5.backgroundColor = .red
            Dos6.backgroundColor = .red
            Dos7.backgroundColor = .red
            Dos8.backgroundColor = .red
        }
        if(Tres1.text != "s" || Tres2.text != "s" || Tres3.text != "b"){
            Tres1.backgroundColor = .red
            Tres2.backgroundColor = .red
            Tres3.backgroundColor = .red
        }
        if(Cuatro1.text != "t" || Cuatro2.text != "o" || Cuatro3.text != "p" || Cuatro4.text != "o" || Cuatro5.text != "i" || Cuatro6.text != "s" || Cuatro7.text != "o" || Cuatro8.text != "m" || Cuatro9.text != "e" || Cuatro10.text != "r" || Cuatro11.text != "a" || Cuatro12.text != "s" || Cuatro13.text != "a"){
            Cuatro1.backgroundColor = .red
            Cuatro2.backgroundColor = .red
            Cuatro3.backgroundColor = .red
            Cuatro4.backgroundColor = .red
            Cuatro5.backgroundColor = .red
            Cuatro6.backgroundColor = .red
            Cuatro7.backgroundColor = .red
            Cuatro8.backgroundColor = .red
            Cuatro9.backgroundColor = .red
            Cuatro10.backgroundColor = .red
            Cuatro11.backgroundColor = .red
            Cuatro12.backgroundColor = .red
            Cuatro13.backgroundColor = .red
        }
        if(Cinco1.text != "o" || Cinco2.text != "k" || Cinco3.text != "a" || Cinco4.text != "s" || Cinco5.text != "a" || Cinco6.text != "k" || Cinco7.text != "i"){
            Cinco1.backgroundColor = .red
            Cinco2.backgroundColor = .red
            Cinco3.backgroundColor = .red
            Cinco4.backgroundColor = .red
            Cinco5.backgroundColor = .red
            Cinco6.backgroundColor = .red
            Cinco7.backgroundColor = .red
        }
        if(Seis1.text != "p" || Seis2.text != "r" || Seis3.text != "i" || Seis4.text != "m" || Seis5.text != "a" || Seis6.text != "s" || Seis7.text != "a"){
            Seis1.backgroundColor = .red
            Seis2.backgroundColor = .red
            Seis3.backgroundColor = .red
            Seis4.backgroundColor = .red
            Seis5.backgroundColor = .red
            Seis6.backgroundColor = .red
            Seis7.backgroundColor = .red
        }
        if(Siete1.text != "a" || Siete2.text != "d" || Siete3.text != "n"){
            Siete1.backgroundColor = .red
            Siete2.backgroundColor = .red
            Siete3.backgroundColor = .red
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(JuegoReplicacionViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(JuegoReplicacionViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0{
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y != 0{
                self.view.frame.origin.y += keyboardSize.height
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
