//
//  JuegoTraduccionViewController.swift
//  novus
//
//  Created by Paola Garzón on 7/19/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit

class JuegoTraduccionViewController: UIViewController {

    @IBOutlet weak var Uno1: UITextField!
    @IBOutlet weak var Uno2: UITextField!
    @IBOutlet weak var Uno3: UITextField!
    @IBOutlet weak var Uno4: UITextField!
    @IBOutlet weak var Uno5: UITextField!
    @IBOutlet weak var Dos1: UITextField!
    @IBOutlet weak var Dos2: UITextField!
    @IBOutlet weak var Dos3: UITextField!
    @IBOutlet weak var Dos4: UITextField!
    @IBOutlet weak var Dos5: UITextField!
    @IBOutlet weak var Dos6: UITextField!
    @IBOutlet weak var Dos7: UITextField!
    @IBOutlet weak var Dos8: UITextField!
    @IBOutlet weak var Dos9: UITextField!
    @IBOutlet weak var Tres1: UITextField!
    @IBOutlet weak var Tres2: UITextField!
    @IBOutlet weak var Tres3: UITextField!
    @IBOutlet weak var Cuatro1: UITextField!
    @IBOutlet weak var Cuatro2: UITextField!
    @IBOutlet weak var Cuatro3: UITextField!
    @IBOutlet weak var Cinco1: UITextField!
    @IBOutlet weak var Cinco2: UITextField!
    @IBOutlet weak var Cinco3: UITextField!
    @IBOutlet weak var Cinco4: UITextField!
    @IBOutlet weak var Cinco5: UITextField!
    @IBOutlet weak var Cinco6: UITextField!
    @IBOutlet weak var Cinco7: UITextField!
    @IBOutlet weak var Cinco8: UITextField!
    @IBOutlet weak var Cinco9: UITextField!
    @IBOutlet weak var Cinco10: UITextField!
    @IBOutlet weak var Seis1: UITextField!
    @IBOutlet weak var Seis2: UITextField!
    @IBOutlet weak var Seis3: UITextField!
    @IBOutlet weak var Seis4: UITextField!
    @IBOutlet weak var Seis5: UITextField!
    @IBOutlet weak var Seis6: UITextField!
    @IBOutlet weak var Siete1: UITextField!
    @IBOutlet weak var Siete2: UITextField!
    @IBOutlet weak var Siete3: UITextField!
    @IBOutlet weak var Ocho1: UITextField!
    @IBOutlet weak var Ocho2: UITextField!
    @IBOutlet weak var Ocho3: UITextField!
    @IBOutlet weak var Ocho4: UITextField!
    @IBOutlet weak var Nueve1: UITextField!
    @IBOutlet weak var Nueve2: UITextField!
    @IBOutlet weak var Nueve3: UITextField!
    
    
    @IBAction func checarPalabra(_ sender: Any) {
        
        //Si todos son correctos entonces te regresa al menú
        if(Uno1.text == "s" && Uno2.text == "i" && Uno3.text == "g" && Uno4.text == "m" && Uno5.text == "a" && Dos1.text == "m" && Dos2.text == "e" && Dos3.text == "n" && Dos4.text == "s" && Dos5.text == "a" && Dos6.text == "j" && Dos7.text == "e" && Dos8.text == "r" && Dos9.text == "o" && Tres1.text == "c" && Tres2.text == "a" && Tres3.text == "p" && Cuatro1.text == "g" && Cuatro2.text == "e" && Cuatro3.text == "n" && Cinco1.text == "p" && Cinco2.text == "o" && Cinco3.text == "l" && Cinco4.text == "i" && Cinco5.text == "m" && Cinco6.text == "e" && Cinco7.text == "r" && Cinco8.text == "a" && Cinco9.text == "s" && Cinco10.text == "a" && Seis1.text == "i" && Seis2.text == "n" && Seis3.text == "t" && Seis4.text == "r" && Seis5.text == "o" && Seis6.text == "n" && Siete1.text == "a" && Siete2.text == "r" && Siete3.text == "n" && Ocho1.text == "e" && Ocho2.text == "x" && Ocho3.text == "o" && Ocho4.text == "n" && Nueve1.text == "r" && Nueve2.text == "h" && Nueve3.text == "o"){
            performSegue(withIdentifier: "goBack", sender: self)
        }
        
        
        //Pintas las correctas de blanco
        if (Uno1.text == "s" && Uno2.text == "i" && Uno3.text == "g" && Uno4.text == "m" && Uno5.text == "a"){
            Uno1.backgroundColor = .white
            Uno2.backgroundColor = .white
            Uno3.backgroundColor = .white
            Uno4.backgroundColor = .white
            Uno5.backgroundColor = .white
        }
        if (Dos1.text == "m" && Dos2.text == "e" && Dos3.text == "n" && Dos4.text == "s" && Dos5.text == "a" && Dos6.text == "j" && Dos7.text == "e" && Dos8.text == "r" && Dos9.text == "o"){
            Dos1.backgroundColor = .white
            Dos2.backgroundColor = .white
            Dos3.backgroundColor = .white
            Dos4.backgroundColor = .white
            Dos5.backgroundColor = .white
            Dos6.backgroundColor = .white
            Dos7.backgroundColor = .white
            Dos8.backgroundColor = .white
            Dos9.backgroundColor = .white
        }
        if (Tres1.text == "c" && Tres2.text == "a" && Tres3.text == "p"){
            Tres1.backgroundColor = .white
            Tres2.backgroundColor = .white
            Tres3.backgroundColor = .white
        }
        if (Cuatro1.text == "g" && Cuatro2.text == "e" && Cuatro3.text == "n"){
            Cuatro1.backgroundColor = .white
            Cuatro2.backgroundColor = .white
            Cuatro3.backgroundColor = .white
        }
        if (Cinco1.text == "p" && Cinco2.text == "o" && Cinco3.text == "l" && Cinco4.text == "i" && Cinco5.text == "m" && Cinco6.text == "e" && Cinco7.text == "r" && Cinco8.text == "a" && Cinco9.text == "s" && Cinco10.text == "a"){
            Cinco1.backgroundColor = .white
            Cinco2.backgroundColor = .white
            Cinco3.backgroundColor = .white
            Cinco4.backgroundColor = .white
            Cinco5.backgroundColor = .white
            Cinco6.backgroundColor = .white
            Cinco7.backgroundColor = .white
            Cinco8.backgroundColor = .white
            Cinco9.backgroundColor = .white
            Cinco10.backgroundColor = .white
        }
        if (Seis1.text == "i" && Seis2.text == "n" && Seis3.text == "t" && Seis4.text == "r" && Seis5.text == "o" && Seis6.text == "n"){
            Seis1.backgroundColor = .white
            Seis2.backgroundColor = .white
            Seis3.backgroundColor = .white
            Seis4.backgroundColor = .white
            Seis5.backgroundColor = .white
            Seis6.backgroundColor = .white
        }
        if (Siete1.text == "a" && Siete2.text == "r" && Siete3.text == "n"){
            Siete1.backgroundColor = .white
            Siete2.backgroundColor = .white
            Siete3.backgroundColor = .white
        }
        if (Ocho1.text == "e" && Ocho2.text == "x" && Ocho3.text == "o" && Ocho4.text == "n"){
            Ocho1.backgroundColor = .white
            Ocho2.backgroundColor = .white
            Ocho3.backgroundColor = .white
            Ocho4.backgroundColor = .white
        }
        if (Nueve1.text == "r" && Nueve2.text == "h" && Nueve3.text == "o"){
            Nueve1.backgroundColor = .white
            Nueve2.backgroundColor = .white
            Nueve3.backgroundColor = .white
        }
        
        //Pintas las incorrectas de rojo
        if (Uno1.text != "s" || Uno2.text != "i" || Uno3.text != "g" || Uno4.text != "m" || Uno5.text != "a"){
            Uno1.backgroundColor = .red
            Uno2.backgroundColor = .red
            Uno3.backgroundColor = .red
            Uno4.backgroundColor = .red
            Uno5.backgroundColor = .red
        }
        if (Dos1.text != "m" || Dos2.text != "e" || Dos3.text != "n" || Dos4.text != "s" || Dos5.text != "a" || Dos6.text != "j" || Dos7.text != "e" || Dos8.text != "r" || Dos9.text != "o"){
            Dos1.backgroundColor = .red
            Dos2.backgroundColor = .red
            Dos3.backgroundColor = .red
            Dos4.backgroundColor = .red
            Dos5.backgroundColor = .red
            Dos6.backgroundColor = .red
            Dos7.backgroundColor = .red
            Dos8.backgroundColor = .red
            Dos9.backgroundColor = .red
        }
        if (Tres1.text != "c" || Tres2.text != "a" || Tres3.text != "p"){
            Tres1.backgroundColor = .red
            Tres2.backgroundColor = .red
            Tres3.backgroundColor = .red
        }
        if (Cuatro1.text != "g" || Cuatro2.text != "e" || Cuatro3.text != "n"){
            Cuatro1.backgroundColor = .red
            Cuatro2.backgroundColor = .red
            Cuatro3.backgroundColor = .red
        }
        if (Cinco1.text != "p" || Cinco2.text != "o" || Cinco3.text != "l" || Cinco4.text != "i" || Cinco5.text != "m" || Cinco6.text != "e" || Cinco7.text != "r" || Cinco8.text != "a" || Cinco9.text != "s" || Cinco10.text != "a"){
            Cinco1.backgroundColor = .red
            Cinco2.backgroundColor = .red
            Cinco3.backgroundColor = .red
            Cinco4.backgroundColor = .red
            Cinco5.backgroundColor = .red
            Cinco6.backgroundColor = .red
            Cinco7.backgroundColor = .red
            Cinco8.backgroundColor = .red
            Cinco9.backgroundColor = .red
        }
        if (Seis1.text != "i" || Seis2.text != "n" || Seis3.text != "t" || Seis4.text != "r" || Seis5.text != "o" || Seis6.text != "n"){
            Seis1.backgroundColor = .red
            Seis2.backgroundColor = .red
            Seis3.backgroundColor = .red
            Seis4.backgroundColor = .red
            Seis5.backgroundColor = .red
            Seis6.backgroundColor = .red
        }
        if (Siete1.text != "a" || Siete2.text != "r" || Siete3.text != "n"){
            Siete1.backgroundColor = .red
            Siete2.backgroundColor = .red
            Siete3.backgroundColor = .red
        }
        if (Ocho1.text != "e" || Ocho2.text != "x" || Ocho3.text != "o" || Ocho4.text != "n"){
            Ocho1.backgroundColor = .red
            Ocho2.backgroundColor = .red
            Ocho3.backgroundColor = .red
            Ocho4.backgroundColor = .red
        }
        if (Nueve1.text != "r" || Nueve2.text != "h" || Nueve3.text != "o"){
            Nueve1.backgroundColor = .red
            Nueve2.backgroundColor = .red
            Nueve3.backgroundColor = .red
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(JuegoTraduccionViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(JuegoTraduccionViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
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

}
