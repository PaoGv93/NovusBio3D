//
//  AvatarViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/12/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit
import AVKit

class AvatarViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let nombre = ["DNA GIRASA SUBUNIDAD A", "TAQ POLIMERASA", "FACTOR SIGMA", "RNA POLIMERASA", "RNA DE TRANSFERENCIA DE FENILALANINA", "FACTOR DE TERMINACION DE LA TRANSCRIPCION RHO", "ROBISOMA 70S"]
    let clasificacion = ["ISOMERASA", "TRANSFERASA", "TRANSCRIPCION/DNA", "TRANSCRIPCION/DNA/RNA", "RNA", "TRANSCRIPCION/RNA", "RIBOSOMA"]
    let asimetria = ["ASIMETRIA-C1", "RAYOS X", "HELICAL-H"]
    let estequiometria = ["MONOMERICA", "HETERO 6 CADENAS", "2A", "HOMO 6 CADENAS", "HETERO 49 CADENAS"]
    let peso = ["34508.72", "99259.27", "16048.41", "443980.63", "25335.51", "288290.13", "2193229.50"]
    let ec = ["5.99.1.3", "2.7.7.7", "NO ES ENZIMA", "2.7.7.6", "3.6.4.-.", "ORGANELO"]
    
    
    @IBOutlet weak var textLabel: UILabel!
    var finalName = String()
    
    @IBOutlet weak var imagenMolecula: UIImageView!
    @IBOutlet weak var atpAvatar: UILabel!
    
    @IBOutlet weak var nombrePickerTextField: UITextField!
    @IBOutlet weak var clasificacionPickerTextField: UITextField!
    @IBOutlet weak var asimetriaPickerTextField: UITextField!
    @IBOutlet weak var estequiometriaPickerTextField: UITextField!
    @IBOutlet weak var pesoPickerTextField: UITextField!
    @IBOutlet weak var ecPickerTextField: UITextField!
    
    @IBAction func goPDB(_ sender: Any) {
        if textLabel.text == "1SUU" {
            UIApplication.shared.open(URL(string : "https://www.rcsb.org/structure/1SUU")!, options: [:], completionHandler: { (status) in
            })
        }
        else if textLabel.text == "1TAU" {
            UIApplication.shared.open(URL(string : "https://www.rcsb.org/structure/1TAU")!, options: [:], completionHandler: { (status) in
            })
        }
        else if textLabel.text == "2O8K" {
            UIApplication.shared.open(URL(string : "https://www.rcsb.org/structure/2O8K")!, options: [:], completionHandler: { (status) in
            })
        }
        else if textLabel.text == "4Q5S" {
            UIApplication.shared.open(URL(string : "https://www.rcsb.org/structure/4Q5S")!, options: [:], completionHandler: { (status) in
            })
        }
        else if textLabel.text == "1EVV" {
            UIApplication.shared.open(URL(string : "https://www.rcsb.org/structure/1EVV")!, options: [:], completionHandler: { (status) in
            })
        }
        else if textLabel.text == "1PVO" {
            UIApplication.shared.open(URL(string : "https://www.rcsb.org/structure/1PVO")!, options: [:], completionHandler: { (status) in
            })
        }
        else if textLabel.text == "4V49" {
            UIApplication.shared.open(URL(string : "https://www.rcsb.org/structure/4V49")!, options: [:], completionHandler: { (status) in
            })
        }
        
    }
    
    //Validaciones de textfiled en boton
    @IBAction func goMolecule(_ sender: Any) {
/*
        if textLabel.text == "1SUU" {
            if( nombrePickerTextField.text == "DNA GIRASA SUBUNIDAD A" && clasificacionPickerTextField.text == "ISOMERASA" && asimetriaPickerTextField.text == "ASIMETRIA-C1" && estequiometriaPickerTextField.text == "MONOMERICA" && pesoPickerTextField.text == "34508.72" && ecPickerTextField.text == "5.99.1.3") {
                performSegue(withIdentifier: "molecule", sender: self)
            }
            else {
                if nombrePickerTextField.text == "DNA GIRASA SUBUNIDAD A" {
                    nombrePickerTextField.backgroundColor = .white
                } else { nombrePickerTextField.backgroundColor = .red }
                if clasificacionPickerTextField.text == "ISOMERASA" {
                    clasificacionPickerTextField.backgroundColor = .white
                } else { clasificacionPickerTextField.backgroundColor = .red }
                if asimetriaPickerTextField.text == "ASIMETRIA-C1" {
                    asimetriaPickerTextField.backgroundColor = .white
                } else { asimetriaPickerTextField.backgroundColor = .red }
                if estequiometriaPickerTextField.text == "MONOMERICA" {
                    estequiometriaPickerTextField.backgroundColor = .white
                } else { estequiometriaPickerTextField.backgroundColor = .red }
                if pesoPickerTextField.text == "34508.72" {
                    pesoPickerTextField.backgroundColor = .white
                } else { pesoPickerTextField.backgroundColor = .red }
                if ecPickerTextField.text == "5.99.1.3" {
                    ecPickerTextField.backgroundColor = .white
                } else { ecPickerTextField.backgroundColor = .red }
            }
        } else if textLabel.text == "1TAU" {
            if( nombrePickerTextField.text == "TAQ POLIMERASA" && clasificacionPickerTextField.text == "TRANSFERASA" && asimetriaPickerTextField.text == "ASIMETRIA-C1" && estequiometriaPickerTextField.text == "MONOMERICA" && pesoPickerTextField.text == "99259.27" && ecPickerTextField.text == "2.7.7.7") {
                performSegue(withIdentifier: "molecule", sender: self)
            }
            else {
                if nombrePickerTextField.text == "TAQ POLIMERASA" {
                    nombrePickerTextField.backgroundColor = .white
                } else { nombrePickerTextField.backgroundColor = .red }
                if clasificacionPickerTextField.text == "TRANSFERASA" {
                    clasificacionPickerTextField.backgroundColor = .white
                } else { clasificacionPickerTextField.backgroundColor = .red }
                if asimetriaPickerTextField.text == "ASIMETRIA-C1" {
                    asimetriaPickerTextField.backgroundColor = .white
                } else { asimetriaPickerTextField.backgroundColor = .red }
                if estequiometriaPickerTextField.text == "MONOMERICA" {
                    estequiometriaPickerTextField.backgroundColor = .white
                } else { estequiometriaPickerTextField.backgroundColor = .red }
                if pesoPickerTextField.text == "99259.27" {
                    pesoPickerTextField.backgroundColor = .white
                } else { pesoPickerTextField.backgroundColor = .red }
                if ecPickerTextField.text == "2.7.7.7" {
                    ecPickerTextField.backgroundColor = .white
                } else { ecPickerTextField.backgroundColor = .red }
            }
        } else if textLabel.text == "2O8K" {
            if( nombrePickerTextField.text == "FACTOR SIGMA" && clasificacionPickerTextField.text == "TRANSCRIPCION/DNA" && asimetriaPickerTextField.text == "ASIMETRIA-C1" && estequiometriaPickerTextField.text == "MONOMERICA" && pesoPickerTextField.text == "16048.41" && ecPickerTextField.text == "NO ES ENZIMA") {
                performSegue(withIdentifier: "molecule", sender: self)
            }
            else {
                if nombrePickerTextField.text == "FACTOR SIGMA" {
                    nombrePickerTextField.backgroundColor = .white
                } else { nombrePickerTextField.backgroundColor = .red }
                if clasificacionPickerTextField.text == "TRANSCRIPCION/DNA" {
                    clasificacionPickerTextField.backgroundColor = .white
                } else { clasificacionPickerTextField.backgroundColor = .red }
                if asimetriaPickerTextField.text == "ASIMETRIA-C1" {
                    asimetriaPickerTextField.backgroundColor = .white
                } else { asimetriaPickerTextField.backgroundColor = .red }
                if estequiometriaPickerTextField.text == "MONOMERICA" {
                    estequiometriaPickerTextField.backgroundColor = .white
                } else { estequiometriaPickerTextField.backgroundColor = .red }
                if pesoPickerTextField.text == "16048.41" {
                    pesoPickerTextField.backgroundColor = .white
                } else { pesoPickerTextField.backgroundColor = .red }
                if ecPickerTextField.text == "NO ES ENZIMA" {
                    ecPickerTextField.backgroundColor = .white
                } else { ecPickerTextField.backgroundColor = .red }
            }
        } else if textLabel.text == "4Q5S" {
            if( nombrePickerTextField.text == "RNA POLIMERASA" && clasificacionPickerTextField.text == "TRANSCRIPCION/DNA/RNA" && asimetriaPickerTextField.text == "ASIMETRIA-C1" && estequiometriaPickerTextField.text == "HETERO 6 CADENAS" && pesoPickerTextField.text == "443980.63" && ecPickerTextField.text == "2.7.7.6") {
                performSegue(withIdentifier: "molecule", sender: self)
            }
            else {
                if nombrePickerTextField.text == "RNA POLIMERASA" {
                    nombrePickerTextField.backgroundColor = .white
                } else { nombrePickerTextField.backgroundColor = .red }
                if clasificacionPickerTextField.text == "TRANSCRIPCION/DNA/RNA" {
                    clasificacionPickerTextField.backgroundColor = .white
                } else { clasificacionPickerTextField.backgroundColor = .red }
                if asimetriaPickerTextField.text == "ASIMETRIA-C1" {
                    asimetriaPickerTextField.backgroundColor = .white
                } else { asimetriaPickerTextField.backgroundColor = .red }
                if estequiometriaPickerTextField.text == "HETERO 6 CADENAS" {
                    estequiometriaPickerTextField.backgroundColor = .white
                } else { estequiometriaPickerTextField.backgroundColor = .red }
                if pesoPickerTextField.text == "443980.63" {
                    pesoPickerTextField.backgroundColor = .white
                } else { pesoPickerTextField.backgroundColor = .red }
                if ecPickerTextField.text == "2.7.7.6" {
                    ecPickerTextField.backgroundColor = .white
                } else { ecPickerTextField.backgroundColor = .red }
            }
        } else if textLabel.text == "1EVV" {
            if( nombrePickerTextField.text == "RNA DE TRANSFERENCIA DE FENILALANINA" && clasificacionPickerTextField.text == "RNA" && asimetriaPickerTextField.text == "RAYOS X" && estequiometriaPickerTextField.text == "2A" && pesoPickerTextField.text == "25335.51" && ecPickerTextField.text == "NO ES ENZIMA") {
                performSegue(withIdentifier: "molecule", sender: self)
            }
            else {
                if nombrePickerTextField.text == "RNA DE TRANSFERENCIA DE FENILALANINA" {
                    nombrePickerTextField.backgroundColor = .white
                } else { nombrePickerTextField.backgroundColor = .red }
                if clasificacionPickerTextField.text == "RNA" {
                    clasificacionPickerTextField.backgroundColor = .white
                } else { clasificacionPickerTextField.backgroundColor = .red }
                if asimetriaPickerTextField.text == "RAYOS X" {
                    asimetriaPickerTextField.backgroundColor = .white
                } else { asimetriaPickerTextField.backgroundColor = .red }
                if estequiometriaPickerTextField.text == "2A" {
                    estequiometriaPickerTextField.backgroundColor = .white
                } else { estequiometriaPickerTextField.backgroundColor = .red }
                if pesoPickerTextField.text == "25335.51" {
                    pesoPickerTextField.backgroundColor = .white
                } else { pesoPickerTextField.backgroundColor = .red }
                if ecPickerTextField.text == "NO ES ENZIMA" {
                    ecPickerTextField.backgroundColor = .white
                } else { ecPickerTextField.backgroundColor = .red }
            }
        } else if textLabel.text == "1PVO" {
            if( nombrePickerTextField.text == "FACTOR DE TERMINACION DE LA TRANSCRIPCION RHO" && clasificacionPickerTextField.text == "TRANSCRIPCION/RNA" && asimetriaPickerTextField.text == "HELICAL-H" && estequiometriaPickerTextField.text == "HOMO 6 CADENAS" && pesoPickerTextField.text == "288290.13" && ecPickerTextField.text == "3.6.4.-.") {*/
                performSegue(withIdentifier: "molecule", sender: self)
        /*
            }
            else {
                if nombrePickerTextField.text == "FACTOR DE TERMINACION DE LA TRANSCRIPCION RHO" {
                    nombrePickerTextField.backgroundColor = .white
                } else { nombrePickerTextField.backgroundColor = .red }
                if clasificacionPickerTextField.text == "TRANSCRIPCION/RNA" {
                    clasificacionPickerTextField.backgroundColor = .white
                } else { clasificacionPickerTextField.backgroundColor = .red }
                if asimetriaPickerTextField.text == "HELICAL-H" {
                    asimetriaPickerTextField.backgroundColor = .white
                } else { asimetriaPickerTextField.backgroundColor = .red }
                if estequiometriaPickerTextField.text == "HOMO 6 CADENAS" {
                    estequiometriaPickerTextField.backgroundColor = .white
                } else { estequiometriaPickerTextField.backgroundColor = .red }
                if pesoPickerTextField.text == "288290.13" {
                    pesoPickerTextField.backgroundColor = .white
                } else { pesoPickerTextField.backgroundColor = .red }
                if ecPickerTextField.text == "3.6.4.-." {
                    ecPickerTextField.backgroundColor = .white
                } else { ecPickerTextField.backgroundColor = .red }
            }
        } else if textLabel.text == "4V49" {
            if( nombrePickerTextField.text == "ROBISOMA 70S" && clasificacionPickerTextField.text == "RIBOSOMA" && asimetriaPickerTextField.text == "ASIMETRIA-C1" && estequiometriaPickerTextField.text == "HETERO 49 CADENAS" && pesoPickerTextField.text == "2193229.50" && ecPickerTextField.text == "ORGANELO") {
                performSegue(withIdentifier: "molecule", sender: self)
            }
            else {
                if nombrePickerTextField.text == "ROBISOMA 70S" {
                    nombrePickerTextField.backgroundColor = .white
                } else { nombrePickerTextField.backgroundColor = .red }
                if clasificacionPickerTextField.text == "RIBOSOMA" {
                    clasificacionPickerTextField.backgroundColor = .white
                } else { clasificacionPickerTextField.backgroundColor = .red }
                if asimetriaPickerTextField.text == "ASIMETRIA-C1" {
                    asimetriaPickerTextField.backgroundColor = .white
                } else { asimetriaPickerTextField.backgroundColor = .red }
                if estequiometriaPickerTextField.text == "HETERO 49 CADENAS" {
                    estequiometriaPickerTextField.backgroundColor = .white
                } else { estequiometriaPickerTextField.backgroundColor = .red }
                if pesoPickerTextField.text == "2193229.50" {
                    pesoPickerTextField.backgroundColor = .white
                } else { pesoPickerTextField.backgroundColor = .red }
                if ecPickerTextField.text == "ORGANELO" {
                    ecPickerTextField.backgroundColor = .white
                } else { ecPickerTextField.backgroundColor = .red }
            }
        }
        */
    }
    
    var nombrePickerView = UIPickerView()
    var clasificacionPickerView = UIPickerView()
    var asimetriaPickerView = UIPickerView()
    var estequiometriaPickerView = UIPickerView()
    var pesoPickerView = UIPickerView()
    var ecPickerView = UIPickerView()
        
    override func viewDidLoad() {
        super.viewDidLoad()
    
        textLabel.text = finalName
        
        if finalName == "1PVO" {
            imagenMolecula.loadGif(name: "1PVO")
        }
        else if finalName == "2O8K" {
            imagenMolecula.loadGif(name: "2O8K")
        }
        else if finalName == "1SUU" {
            imagenMolecula.loadGif(name: "1SUU")
        }
        else if finalName == "1TAU" {
            imagenMolecula.loadGif(name: "1TAU")
        }
        else if finalName == "4Q5S" {
            imagenMolecula.loadGif(name: "4Q5S")
        }
        else if finalName == "1EVV" {
            imagenMolecula.loadGif(name: "1EVV")
        }
        else if finalName == "4V49" {
            imagenMolecula.loadGif(name: "4V49")
        }
        
        nombrePickerView.delegate = self
        nombrePickerView.dataSource = self
        
        clasificacionPickerView.delegate = self
        clasificacionPickerView.dataSource = self

        asimetriaPickerView.delegate = self
        asimetriaPickerView.dataSource = self

        estequiometriaPickerView.delegate = self
        estequiometriaPickerView.dataSource = self

        pesoPickerView.delegate = self
        pesoPickerView.dataSource = self

        ecPickerView.delegate = self
        ecPickerView.dataSource = self

        nombrePickerTextField.inputView = nombrePickerView
        clasificacionPickerTextField.inputView = clasificacionPickerView
        asimetriaPickerTextField.inputView = asimetriaPickerView
        estequiometriaPickerTextField.inputView = estequiometriaPickerView
        pesoPickerTextField.inputView = pesoPickerView
        ecPickerTextField.inputView = ecPickerView
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView == nombrePickerView) {
            return nombre.count
        }
        else if (pickerView == clasificacionPickerView) {
            return clasificacion.count
            }
        else if pickerView == asimetriaPickerView {
            return asimetria.count
            }
        else if pickerView == estequiometriaPickerView {
            return estequiometria.count
            }
        else if pickerView == pesoPickerView {
            return peso.count
        }
        else{
            return ec.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView == nombrePickerView) {
            return nombre[row]
        }
        else if pickerView == clasificacionPickerView {
            return clasificacion[row]
        }
        else if pickerView == asimetriaPickerView {
            return asimetria[row]
        }
        else if pickerView == estequiometriaPickerView {
            return estequiometria[row]
        }
        else if pickerView == pesoPickerView {
            return peso[row]
        }
        else {
            return ec[row]
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == nombrePickerView {
            nombrePickerTextField.text = nombre[row]
            nombrePickerTextField.resignFirstResponder()
        }
        else if pickerView == clasificacionPickerView {
            clasificacionPickerTextField.text = clasificacion[row]
            clasificacionPickerTextField.resignFirstResponder()
        }
        else if pickerView == asimetriaPickerView {
            asimetriaPickerTextField.text = asimetria[row]
            asimetriaPickerTextField.resignFirstResponder()
        }
        else if pickerView == estequiometriaPickerView {
            estequiometriaPickerTextField.text = estequiometria[row]
            estequiometriaPickerTextField.resignFirstResponder()
        }
        else if pickerView == pesoPickerView {
            pesoPickerTextField.text = peso[row]
            pesoPickerTextField.resignFirstResponder()
        }
        else{
            ecPickerTextField.text = ec[row]
            ecPickerTextField.resignFirstResponder()
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
}
