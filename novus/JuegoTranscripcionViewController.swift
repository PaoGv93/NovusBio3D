//
//  JuegoTranscripcionViewController.swift
//  novus
//
//  Created by Paola Garzón on 7/19/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit

class JuegoTranscripcionViewController: UIViewController {

    @IBOutlet weak var Uno1: UITextField!
    @IBOutlet weak var Uno2: UITextField!
    @IBOutlet weak var Uno3: UITextField!
    @IBOutlet weak var Uno4: UITextField!
    @IBOutlet weak var Uno5: UITextField!
    @IBOutlet weak var Uno6: UITextField!
    @IBOutlet weak var Uno7: UITextField!
    @IBOutlet weak var Uno8: UITextField!
    @IBOutlet weak var Uno9: UITextField!
    @IBOutlet weak var Uno10: UITextField!
    @IBOutlet weak var Uno11: UITextField!
    @IBOutlet weak var Uno12: UITextField!
    @IBOutlet weak var Uno13: UITextField!
    @IBOutlet weak var Uno14: UITextField!
    @IBOutlet weak var Uno15: UITextField!
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
    @IBOutlet weak var Tres4: UITextField!
    @IBOutlet weak var Tres5: UITextField!
    @IBOutlet weak var Tres6: UITextField!
    @IBOutlet weak var Tres7: UITextField!
    @IBOutlet weak var Tres8: UITextField!
    @IBOutlet weak var Cuatro1: UITextField!
    @IBOutlet weak var Cuatro2: UITextField!
    @IBOutlet weak var Cuatro3: UITextField!
    @IBOutlet weak var Cuatro4: UITextField!
    @IBOutlet weak var Cinco1: UITextField!
    @IBOutlet weak var Cinco2: UITextField!
    @IBOutlet weak var Cinco3: UITextField!
    @IBOutlet weak var Cinco4: UITextField!
    @IBOutlet weak var Cinco5: UITextField!
    @IBOutlet weak var Cinco6: UITextField!
    @IBOutlet weak var Cinco7: UITextField!
    @IBOutlet weak var Cinco8: UITextField!
    @IBOutlet weak var Cinco9: UITextField!
    @IBOutlet weak var Seis1: UITextField!
    @IBOutlet weak var Seis2: UITextField!
    @IBOutlet weak var Seis3: UITextField!
    @IBOutlet weak var Seis4: UITextField!
    @IBOutlet weak var Seis5: UITextField!
    @IBOutlet weak var Siete1: UITextField!
    @IBOutlet weak var Siete2: UITextField!
    @IBOutlet weak var Siete3: UITextField!
    @IBOutlet weak var Siete4: UITextField!
    @IBOutlet weak var Ocho1: UITextField!
    @IBOutlet weak var Ocho2: UITextField!
    @IBOutlet weak var Ocho3: UITextField!
    @IBOutlet weak var Ocho4: UITextField!
    @IBOutlet weak var Ocho5: UITextField!
    @IBOutlet weak var Ocho6: UITextField!
    @IBOutlet weak var Ocho7: UITextField!
    @IBOutlet weak var Ocho8: UITextField!
    @IBOutlet weak var Ocho9: UITextField!
    @IBOutlet weak var Ocho10: UITextField!
    @IBOutlet weak var Ocho11: UITextField!
    @IBOutlet weak var Ocho12: UITextField!
    @IBOutlet weak var Ocho13: UITextField!
    
    @IBAction func checar(_ sender: Any) {
        
        //Si todos son correctos entonces te regresa al menú
        if(Uno1.text == "c" && Uno2.text == "o" && Uno3.text == "d" && Uno4.text == "i" && Uno5.text == "g" && Uno6.text == "o" && Uno8.text == "g" && Uno9.text == "e" && Uno10.text == "n" && Uno11.text == "e" && Uno12.text == "t" && Uno13.text == "i" && Uno14.text == "c" && Uno15.text == "o" && Dos1.text == "p" && Dos2.text == "r" && Dos3.text == "o" && Dos4.text == "t" && Dos5.text == "e" && Dos6.text == "i" && Dos7.text == "n" && Dos8.text == "a" && Tres1.text == "r" && Tres2.text == "i" && Tres3.text == "b" && Tres4.text == "o" && Tres5.text == "s" && Tres6.text == "o" && Tres7.text == "m" && Tres8.text == "a" && Cinco1.text == "a" && Cinco2.text == "n" && Cinco3.text == "t" && Cinco4.text == "i" && Cinco5.text == "c" && Cinco6.text == "o" && Cinco7.text == "d" && Cinco8.text == "o" && Cinco9.text == "n" && Seis1.text == "c" && Seis2.text == "o" && Seis3.text == "d" && Seis4.text == "o" && Seis5.text == "n" && Siete1.text == "a" && Siete2.text == "r" && Siete3.text == "n" && Siete4.text == "m" && Ocho1.text == "t" && Ocho2.text == "r" && Ocho3.text == "a" && Ocho4.text == "n" && Ocho5.text == "s" && Ocho6.text == "c" && Ocho7.text == "r" && Ocho8.text == "i" && Ocho9.text == "p" && Ocho10.text == "c" && Ocho11.text == "i" && Ocho12.text == "o" && Ocho13.text == "n"){
            performSegue(withIdentifier: "goBack", sender: self)
            
        }
        //Pintar los correctos
        if(Uno1.text == "c" && Uno2.text == "o" && Uno3.text == "d" && Uno4.text == "i" && Uno5.text == "g" && Uno6.text == "o" && Uno8.text == "g" && Uno9.text == "e" && Uno10.text == "n" && Uno11.text == "e" && Uno12.text == "t" && Uno13.text == "i" && Uno14.text == "c" && Uno15.text == "o"){
            Uno1.backgroundColor = .white
            Uno2.backgroundColor = .white
            Uno3.backgroundColor = .white
            Uno4.backgroundColor = .white
            Uno5.backgroundColor = .white
            Uno6.backgroundColor = .white
            Uno7.backgroundColor = .white
            Uno8.backgroundColor = .white
            Uno9.backgroundColor = .white
            Uno10.backgroundColor = .white
            Uno11.backgroundColor = .white
            Uno12.backgroundColor = .white
            Uno13.backgroundColor = .white
            Uno14.backgroundColor = .white
            Uno15.backgroundColor = .white
        }
        if(Dos1.text == "p" && Dos2.text == "r" && Dos3.text == "o" && Dos4.text == "t" && Dos5.text == "e" && Dos6.text == "i" && Dos7.text == "n" && Dos8.text == "a"){
            Dos1.backgroundColor = .white
            Dos2.backgroundColor = .white
            Dos3.backgroundColor = .white
            Dos4.backgroundColor = .white
            Dos5.backgroundColor = .white
            Dos6.backgroundColor = .white
            Dos7.backgroundColor = .white
            Dos8.backgroundColor = .white
        }
        if(Tres1.text == "r" && Tres2.text == "i" && Tres3.text == "b" && Tres4.text == "o" && Tres5.text == "s" && Tres6.text == "o" && Tres7.text == "m" && Tres8.text == "a"){
            Tres1.backgroundColor = .white
            Tres2.backgroundColor = .white
            Tres3.backgroundColor = .white
            Tres4.backgroundColor = .white
            Tres5.backgroundColor = .white
            Tres6.backgroundColor = .white
            Tres7.backgroundColor = .white
            Tres8.backgroundColor = .white
        }
        if(Cuatro1.text == "a" && Cuatro2.text == "r" && Cuatro3.text == "n" && Cuatro4.text == "t"){
            Cuatro1.backgroundColor = .white
            Cuatro2.backgroundColor = .white
            Cuatro3.backgroundColor = .white
            Cuatro4.backgroundColor = .white
        }
        if(Cinco1.text == "a" && Cinco2.text == "n" && Cinco3.text == "t" && Cinco4.text == "i" && Cinco5.text == "c" && Cinco6.text == "o" && Cinco7.text == "d" && Cinco8.text == "o" && Cinco9.text == "n"){
            Cinco1.backgroundColor = .white
            Cinco2.backgroundColor = .white
            Cinco3.backgroundColor = .white
            Cinco4.backgroundColor = .white
            Cinco5.backgroundColor = .white
            Cinco6.backgroundColor = .white
            Cinco7.backgroundColor = .white
            Cinco8.backgroundColor = .white
            Cinco9.backgroundColor = .white
        }
        if(Seis1.text == "c" && Seis2.text == "o" && Seis3.text == "d" && Seis4.text == "o" && Seis5.text == "n"){
            Seis1.backgroundColor = .white
            Seis2.backgroundColor = .white
            Seis3.backgroundColor = .white
            Seis4.backgroundColor = .white
            Seis5.backgroundColor = .white
        }
        if(Siete1.text == "a" && Siete2.text == "r" && Siete3.text == "n" && Siete4.text == "m"){
            Siete1.backgroundColor = .white
            Siete2.backgroundColor = .white
            Siete3.backgroundColor = .white
            Siete4.backgroundColor = .white
        }
        if(Ocho1.text == "t" && Ocho2.text == "r" && Ocho3.text == "a" && Ocho4.text == "n" && Ocho5.text == "s" && Ocho6.text == "c" && Ocho7.text == "r" && Ocho8.text == "i" && Ocho9.text == "p" && Ocho10.text == "c" && Ocho11.text == "i" && Ocho12.text == "o" && Ocho13.text == "n"){
            Ocho1.backgroundColor = .white
            Ocho2.backgroundColor = .white
            Ocho3.backgroundColor = .white
            Ocho4.backgroundColor = .white
            Ocho5.backgroundColor = .white
            Ocho6.backgroundColor = .white
            Ocho7.backgroundColor = .white
            Ocho8.backgroundColor = .white
            Ocho9.backgroundColor = .white
            Ocho10.backgroundColor = .white
            Ocho11.backgroundColor = .white
            Ocho12.backgroundColor = .white
            Ocho13.backgroundColor = .white
        }
        
        //pintar los incorrectos
        if(Uno1.text != "c" && Uno2.text != "o" && Uno3.text != "d" && Uno4.text != "i" && Uno5.text != "g" && Uno6.text != "o" && Uno8.text != "g" && Uno9.text != "e" && Uno10.text != "n" && Uno11.text != "e" && Uno12.text != "t" && Uno13.text != "i" && Uno14.text != "c" && Uno15.text != "o"){
            Uno1.backgroundColor = .red
            Uno2.backgroundColor = .red
            Uno3.backgroundColor = .red
            Uno4.backgroundColor = .red
            Uno5.backgroundColor = .red
            Uno6.backgroundColor = .red
            Uno7.backgroundColor = .red
            Uno8.backgroundColor = .red
            Uno9.backgroundColor = .red
            Uno10.backgroundColor = .red
            Uno11.backgroundColor = .red
            Uno12.backgroundColor = .red
            Uno13.backgroundColor = .red
            Uno14.backgroundColor = .red
            Uno15.backgroundColor = .red
        }
        if(Dos1.text != "p" && Dos2.text != "r" && Dos3.text != "o" && Dos4.text != "t" && Dos5.text != "e" && Dos6.text != "i" && Dos7.text != "n" && Dos8.text != "a"){
            Dos1.backgroundColor = .red
            Dos2.backgroundColor = .red
            Dos3.backgroundColor = .red
            Dos4.backgroundColor = .red
            Dos5.backgroundColor = .red
            Dos6.backgroundColor = .red
            Dos7.backgroundColor = .red
            Dos8.backgroundColor = .red
        }
        if(Tres1.text != "r" && Tres2.text != "i" && Tres3.text != "b" && Tres4.text != "o" && Tres5.text != "s" && Tres6.text != "o" && Tres7.text != "m" && Tres8.text != "a"){
            Tres1.backgroundColor = .red
            Tres2.backgroundColor = .red
            Tres3.backgroundColor = .red
            Tres4.backgroundColor = .red
            Tres5.backgroundColor = .red
            Tres6.backgroundColor = .red
            Tres7.backgroundColor = .red
            Tres8.backgroundColor = .red
        }
        if(Cuatro1.text != "a" && Cuatro2.text != "r" && Cuatro3.text != "n" && Cuatro4.text != "t"){
            Cuatro1.backgroundColor = .red
            Cuatro2.backgroundColor = .red
            Cuatro3.backgroundColor = .red
            Cuatro4.backgroundColor = .red
        }
        if(Cinco1.text != "a" && Cinco2.text != "n" && Cinco3.text != "t" && Cinco4.text != "i" && Cinco5.text != "c" && Cinco6.text != "o" && Cinco7.text != "d" && Cinco8.text != "o" && Cinco9.text != "n"){
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
        if(Seis1.text != "c" && Seis2.text != "o" && Seis3.text != "d" && Seis4.text != "o" && Seis5.text != "n"){
            Seis1.backgroundColor = .red
            Seis2.backgroundColor = .red
            Seis3.backgroundColor = .red
            Seis4.backgroundColor = .red
            Seis5.backgroundColor = .red
        }
        if(Siete1.text != "a" && Siete2.text != "r" && Siete3.text != "n" && Siete4.text != "m"){
            Siete1.backgroundColor = .red
            Siete2.backgroundColor = .red
            Siete3.backgroundColor = .red
            Siete4.backgroundColor = .red
        }
        if(Ocho1.text != "t" && Ocho2.text != "r" && Ocho3.text != "a" && Ocho4.text != "n" && Ocho5.text != "s" && Ocho6.text != "c" && Ocho7.text != "r" && Ocho8.text != "i" && Ocho9.text != "p" && Ocho10.text != "c" && Ocho11.text != "i" && Ocho12.text != "o" && Ocho13.text != "n"){
            Ocho1.backgroundColor = .red
            Ocho2.backgroundColor = .red
            Ocho3.backgroundColor = .red
            Ocho4.backgroundColor = .red
            Ocho5.backgroundColor = .red
            Ocho6.backgroundColor = .red
            Ocho7.backgroundColor = .red
            Ocho8.backgroundColor = .red
            Ocho9.backgroundColor = .red
            Ocho10.backgroundColor = .red
            Ocho11.backgroundColor = .red
            Ocho12.backgroundColor = .red
            Ocho13.backgroundColor = .red
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(JuegoTranscripcionViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(JuegoTranscripcionViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
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
