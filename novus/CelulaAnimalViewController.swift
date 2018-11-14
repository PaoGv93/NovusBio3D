//
//  CelulaAnimalViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/14/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit

struct ViewStateCelulaAnimal {
    static var state = false
}

class CelulaAnimalViewController: UIViewController {

    @IBOutlet weak var citoesqueleto: UITextField!
    @IBOutlet weak var citoplasma: UITextField!
    @IBOutlet weak var nucleo: UITextField!
    @IBOutlet weak var centriolos: UITextField!
    @IBOutlet weak var cromatina: UITextField!
    @IBOutlet weak var mitocondria: UITextField!
    @IBOutlet weak var ribosoma: UITextField!
    @IBOutlet weak var libosoma: UITextField!
    @IBOutlet weak var reticuloRugoso: UITextField!
    @IBOutlet weak var reticuloLiso: UITextField!
    @IBOutlet weak var golgi: UITextField!
    @IBOutlet weak var vesicula: UITextField!
    @IBOutlet weak var pared: UITextField!
    @IBOutlet weak var tiempoCelulaAnimal: UILabel!
    
    //Definiciones
    @IBOutlet weak var informacionCodificada: UITextField!
    @IBOutlet weak var espacioOrganelos: UITextField!
    @IBOutlet weak var iniciaCitoesqueleto: UITextField!
    @IBOutlet weak var fabricaEnergia: UITextField!
    @IBOutlet weak var macromolecula: UITextField!
    @IBOutlet weak var estructuraCelula: UITextField!
    @IBOutlet weak var sintesisLipidos: UITextField!
    @IBOutlet weak var transportaSustancias: UITextField!
    @IBOutlet weak var BicapaLipidica: UITextField!
    @IBOutlet weak var sintesisProteinas: UITextField!
    @IBOutlet weak var empaquetar: UITextField!
    @IBOutlet weak var eliminarProteinas: UITextField!
    @IBOutlet weak var produccionProteinas: UITextField!
    
    @IBOutlet weak var imgCelula: UIImageView!
    
    var seconds = 0
    var timer = Timer()
    var isTimerRunning = false
    
    var tiempo = UILabel()
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(CelulaAnimalViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        seconds += 1
        tiempoCelulaAnimal.text = "Tiempo: \(seconds) seg"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest:MoleculasViewController = (segue.destination as? MoleculasViewController)!
        dest.tiempoA = tiempo.text!
    }
    
    @IBAction func goBack(_ sender: Any) {
        
        if citoesqueleto.text == "4" && citoplasma.text == "2" && nucleo.text == "1" && centriolos.text == "7" && cromatina.text == "3" && mitocondria.text == "8" && ribosoma.text == "13" && libosoma.text == "12" && reticuloRugoso.text == "6" && reticuloLiso.text == "9" && golgi.text == "11" && vesicula.text == "10" && pared.text == "5"  && informacionCodificada.text == "1" && espacioOrganelos.text == "2" && iniciaCitoesqueleto.text == "7" && fabricaEnergia.text == "8" && macromolecula.text == "3" && estructuraCelula.text == "4" && sintesisLipidos.text == "9" && transportaSustancias.text == "10" && BicapaLipidica.text == "5" && sintesisProteinas.text == "6" && empaquetar.text == "11" && eliminarProteinas.text == "12" && produccionProteinas.text == "13" {
            
            tiempo.text = tiempoCelulaAnimal.text
            ViewStateCelulaAnimal.state = true
            performSegue(withIdentifier: "goBack", sender: self)
        }
        if citoesqueleto.text == "4" {
            citoesqueleto.backgroundColor = .white
        } else { citoesqueleto.backgroundColor = .red }
        if citoplasma.text == "2" {
            citoplasma.backgroundColor = .white
        } else { citoplasma.backgroundColor = .red }
        if nucleo.text == "1" {
            nucleo.backgroundColor = .white
        } else { nucleo.backgroundColor = .red }
        if centriolos.text == "7" {
            centriolos.backgroundColor = .white
        } else { centriolos.backgroundColor = .red }
        if cromatina.text == "3" {
            cromatina.backgroundColor = .white
        } else { cromatina.backgroundColor = .red }
        if mitocondria.text == "8" {
            mitocondria.backgroundColor = .white
        } else { mitocondria.backgroundColor = .red }
        if ribosoma.text == "13" {
            ribosoma.backgroundColor = .white
        } else { ribosoma.backgroundColor = .red }
        if libosoma.text == "12" {
            libosoma.backgroundColor = .white
        } else { libosoma.backgroundColor = .red }
        if reticuloRugoso.text == "6" {
            reticuloRugoso.backgroundColor = .white
        } else { reticuloRugoso.backgroundColor = .red }
        if reticuloLiso.text == "9" {
            reticuloLiso.backgroundColor = .white
        } else { reticuloLiso.backgroundColor = .red }
        if golgi.text == "11" {
            golgi.backgroundColor = .white
        } else { golgi.backgroundColor = .red }
        if vesicula.text == "10" {
            vesicula.backgroundColor = .white
        } else { vesicula.backgroundColor = .red }
        if pared.text == "5" {
            pared.backgroundColor = .white
        } else { pared.backgroundColor = .red }
        
        
        if informacionCodificada.text == "1" {
            informacionCodificada.backgroundColor = .white
        } else { informacionCodificada.backgroundColor = .red }
        if espacioOrganelos.text == "2" {
            espacioOrganelos.backgroundColor = .white
        } else { espacioOrganelos.backgroundColor = .red }
        if iniciaCitoesqueleto.text == "7" {
            iniciaCitoesqueleto.backgroundColor = .white
        } else { iniciaCitoesqueleto.backgroundColor = .red }
        if fabricaEnergia.text == "8" {
            fabricaEnergia.backgroundColor = .white
        } else { fabricaEnergia.backgroundColor = .red }
        if macromolecula.text == "3" {
            macromolecula.backgroundColor = .white
        } else { macromolecula.backgroundColor = .red }
        if estructuraCelula.text == "4" {
            estructuraCelula.backgroundColor = .white
        } else { estructuraCelula.backgroundColor = .red }
        if sintesisLipidos.text == "9" {
            sintesisLipidos.backgroundColor = .white
        } else { sintesisLipidos.backgroundColor = .red }
        if transportaSustancias.text == "10" {
            transportaSustancias.backgroundColor = .white
        } else { transportaSustancias.backgroundColor = .red }
        if BicapaLipidica.text == "5" {
            BicapaLipidica.backgroundColor = .white
        } else { BicapaLipidica.backgroundColor = .red }
        if sintesisProteinas.text == "6" {
            sintesisProteinas.backgroundColor = .white
        } else { sintesisProteinas.backgroundColor = .red }
        if empaquetar.text == "11" {
            empaquetar.backgroundColor = .white
        } else { empaquetar.backgroundColor = .red }
        if eliminarProteinas.text == "12" {
            eliminarProteinas.backgroundColor = .white
        } else { eliminarProteinas.backgroundColor = .red }
        if produccionProteinas.text == "13" {
            produccionProteinas.backgroundColor = .white
        } else { produccionProteinas.backgroundColor = .red }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pictureTap = UITapGestureRecognizer(target: self, action: #selector(CelulaAnimalViewController.imageTapped)); imgCelula.addGestureRecognizer(pictureTap)
        imgCelula.isUserInteractionEnabled = true
        
        NotificationCenter.default.addObserver(self, selector: #selector(CelulaAnimalViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(CelulaAnimalViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        runTimer()
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        let imageView = sender.view as! UIImageView
        let newImageView = UIImageView(image: imageView.image)
        newImageView.frame = UIScreen.main.bounds
        newImageView.backgroundColor = .black
        newImageView.contentMode = .scaleAspectFit
        newImageView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
        newImageView.addGestureRecognizer(tap)
        self.view.addSubview(newImageView)
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    @objc func dismissFullscreenImage(_ sender: UITapGestureRecognizer) {
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = false
        sender.view?.removeFromSuperview()
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
