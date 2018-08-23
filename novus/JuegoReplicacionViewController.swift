
//
//  juegoViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/12/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit

class JuegoReplicacionViewController: UIViewController {
    
    @IBOutlet weak var One_L: UITextField!
    @IBOutlet weak var One_I: UITextField!
    @IBOutlet weak var One_G: UITextField!
    @IBOutlet weak var One_A: UITextField!
    @IBOutlet weak var One_S: UITextField!
    @IBOutlet weak var One_2A: UITextField!
    
    @IBOutlet weak var Two_H: UITextField!
    @IBOutlet weak var Two_E: UITextField!
    @IBOutlet weak var Two_L: UITextField!
    @IBOutlet weak var Two_I: UITextField!
    @IBOutlet weak var Two_C: UITextField!
    @IBOutlet weak var Two_A: UITextField!
    @IBOutlet weak var Two_S: UITextField!
    @IBOutlet weak var Two_2A: UITextField!
    
    @IBOutlet weak var Three_S: UITextField!
    @IBOutlet weak var Three_2S: UITextField!
    @IBOutlet weak var Three_B: UITextField!
    
    @IBOutlet weak var Four_T: UITextField!
    @IBOutlet weak var Four_O: UITextField!
    @IBOutlet weak var Four_P: UITextField!
    @IBOutlet weak var Four_2O: UITextField!
    @IBOutlet weak var Four_I: UITextField!
    @IBOutlet weak var Four_3O: UITextField!
    @IBOutlet weak var Four_M: UITextField!
    @IBOutlet weak var Four_R: UITextField!
    @IBOutlet weak var Four_A: UITextField!
    @IBOutlet weak var Four_2A: UITextField!
    
    @IBOutlet weak var Five_O: UITextField!
    @IBOutlet weak var Five_K: UITextField!
    @IBOutlet weak var Five_A: UITextField!
    @IBOutlet weak var Five_Z: UITextField!
    @IBOutlet weak var Five_2A: UITextField!
    @IBOutlet weak var Five_2K: UITextField!
    @IBOutlet weak var Five_I: UITextField!
    
    @IBOutlet weak var Six_P: UITextField!
    @IBOutlet weak var Six_R: UITextField!
    @IBOutlet weak var Six_I: UITextField!
    @IBOutlet weak var Six_M: UITextField!
    @IBOutlet weak var Six_S: UITextField!
    
    @IBOutlet weak var Seven_D: UITextField!
    @IBOutlet weak var Seven_N: UITextField!
    
    
    @IBAction func goJuego(_ sender: Any) {
        if One_L.text == "l" && One_I.text == "i" &&  One_G.text == "g" &&  One_A.text == "a" &&  One_S.text == "s" &&  One_2A.text == "a" && Two_H.text == "h" && Two_E.text == "e" && Two_L.text == "l" && Two_I.text == "i" && Two_C.text == "c" && Two_A.text == "a" && Two_S.text == "s" && Two_2A.text == "a" && Three_S.text == "s" && Three_2S.text == "s" && Three_B.text == "b" && Four_T.text == "t" && Four_O.text == "o" && Four_P.text == "p" && Four_2O.text == "o" && Four_I.text == "i" && Four_3O.text == "o" && Four_M.text == "m" && Four_R.text == "r" && Four_A.text == "a" && Four_2A.text == "a" && Five_O.text == "o" && Five_K.text == "k" && Five_A.text == "a" && Five_Z.text == "z" && Five_2A.text == "a" && Five_2K.text == "k" && Five_I.text == "i" && Six_P.text == "p" && Six_R.text == "r" && Six_I.text == "i" && Six_M.text == "m" && Six_S.text == "s" && Seven_D.text == "d" && Seven_N.text == "n" {
            performSegue(withIdentifier: "Juego", sender: self)
        }
        if One_L.text == "l" && One_I.text == "i" &&  One_G.text == "g" &&  One_A.text == "a" &&  One_S.text == "s" &&  One_2A.text == "a" {
            One_L.backgroundColor = .white
            One_I.backgroundColor = .white
            One_G.backgroundColor = .white
            One_A.backgroundColor = .white
            One_S.backgroundColor = .white
            One_2A.backgroundColor = .white
        } else {
            One_L.backgroundColor = .red
            One_I.backgroundColor = .red
            One_G.backgroundColor = .red
            One_A.backgroundColor = .red
            One_S.backgroundColor = .red
            One_2A.backgroundColor = .red
        }
        if Two_H.text == "h" && Two_E.text == "e" && Two_L.text == "l" && Two_I.text == "i" && Two_C.text == "c" && Two_A.text == "a" && Two_S.text == "s" && Two_2A.text == "a" {
            Two_H.backgroundColor = .white
            Two_E.backgroundColor = .white
            Two_L.backgroundColor = .white
            Two_I.backgroundColor = .white
            Two_C.backgroundColor = .white
            Two_A.backgroundColor = .white
            Two_S.backgroundColor = .white
            Two_2A.backgroundColor = .white
        } else {
            Two_H.backgroundColor = .red
            Two_E.backgroundColor = .red
            Two_L.backgroundColor = .red
            Two_I.backgroundColor = .red
            Two_C.backgroundColor = .red
            Two_A.backgroundColor = .red
            Two_S.backgroundColor = .red
            Two_2A.backgroundColor = .red
        }
        if Three_S.text == "s" && Three_2S.text == "s" && Three_B.text == "b" {
            Three_S.backgroundColor = .white
            Three_2S.backgroundColor = .white
            Three_B.backgroundColor = .white
        } else {
            Three_S.backgroundColor = .red
            Three_2S.backgroundColor = .red
            Three_B.backgroundColor = .red
        }
        if Four_T.text == "t" && Four_O.text == "o" && Four_P.text == "p" && Four_2O.text == "o" && Four_I.text == "i" && One_S.text == "s" && Four_3O.text == "o" && Four_M.text == "m" && Two_E.text == "e" && Four_R.text == "r" && Four_A.text == "a" && Three_2S.text == "s" && Four_2A.text == "a" {
            Four_T.backgroundColor = .white
            Four_O.backgroundColor = .white
            Four_P.backgroundColor = .white
            Four_2O.backgroundColor = .white
            Four_I.backgroundColor = .white
            One_S.backgroundColor = .white
            Four_3O.backgroundColor = .white
            Four_M.backgroundColor = .white
            Two_E.backgroundColor = .white
            Four_R.backgroundColor = .white
            Four_A.backgroundColor = .white
            Three_2S.backgroundColor = .white
            Four_2A.backgroundColor = .white
        } else {
            Four_T.backgroundColor = .red
            Four_O.backgroundColor = .red
            Four_P.backgroundColor = .red
            Four_2O.backgroundColor = .red
            Four_I.backgroundColor = .red
            One_S.backgroundColor = .red
            Four_3O.backgroundColor = .red
            Four_M.backgroundColor = .red
            Two_E.backgroundColor = .red
            Four_R.backgroundColor = .red
            Four_A.backgroundColor = .red
            Three_2S.backgroundColor = .red
            Four_2A.backgroundColor = .red
        }
        if Five_O.text == "o" && Five_K.text == "k" && Five_A.text == "a" && Five_Z.text == "z" && Five_2A.text == "a" && Five_2K.text == "k" && Five_I.text == "i" {
            Five_O.backgroundColor = .white
            Five_K.backgroundColor = .white
            Five_A.backgroundColor = .white
            Five_Z.backgroundColor = .white
            Five_2A.backgroundColor = .white
            Five_2K.backgroundColor = .white
            Five_I.backgroundColor = .white
        } else {
            Five_O.backgroundColor = .red
            Five_K.backgroundColor = .red
            Five_A.backgroundColor = .red
            Five_Z.backgroundColor = .red
            Five_2A.backgroundColor = .red
            Five_2K.backgroundColor = .red
            Five_I.backgroundColor = .red
        }
        if Six_P.text == "p" && Six_R.text == "r" && Six_I.text == "i" && Six_M.text == "m" && Five_A.text == "a" && Six_S.text == "s" && Two_A.text == "a" {
            Six_P.backgroundColor = .white
            Six_R.backgroundColor = .white
            Six_I.backgroundColor = .white
            Six_M.backgroundColor = .white
            Five_A.backgroundColor = .white
            Six_S.backgroundColor = .white
            Two_A.backgroundColor = .white
        } else {
            Six_P.backgroundColor = .red
            Six_R.backgroundColor = .red
            Six_I.backgroundColor = .red
            Six_M.backgroundColor = .red
            Five_A.backgroundColor = .red
            Six_S.backgroundColor = .red
            Two_A.backgroundColor = .red
        }
        if Two_2A.text == "a" && Seven_D.text == "d" && Seven_N.text == "n" {
            Two_2A.backgroundColor = .white
            Seven_D.backgroundColor = .white
            Seven_N.backgroundColor = .white
        } else {
            Two_2A.backgroundColor = .red
            Seven_D.backgroundColor = .red
            Seven_N.backgroundColor = .red
        }
    }
}
