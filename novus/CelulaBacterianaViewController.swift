//
//  CelulaBacterianaViewController.swift
//  novus
//
//  Created by Alumno on 14/06/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit

struct ViewStateCelulaBacteriana {
    static var state = false
}

class CelulaBacterianaViewController: UIViewController {

    @IBOutlet weak var plasmidos: UITextField!
    @IBOutlet weak var proteina: UITextField!
    @IBOutlet weak var flagelo: UITextField!
    @IBOutlet weak var ribosoma: UITextField!
    @IBOutlet weak var membranaPlasmatica: UITextField!
    @IBOutlet weak var pilus: UITextField!
    @IBOutlet weak var glicocalix: UITextField!
    @IBOutlet weak var paredCelular: UITextField!
    @IBOutlet weak var fimbria: UITextField!
    @IBOutlet weak var citoplasma: UITextField!
    
    //Definiciones
    @IBOutlet weak var informacion: UITextField!
    @IBOutlet weak var espacioOrganelos: UITextField!
    @IBOutlet weak var pegarSuperficie: UITextField!
    @IBOutlet weak var movilidadCelular: UITextField!
    @IBOutlet weak var macromolecula: UITextField!
    @IBOutlet weak var microvellosidad: UITextField!
    @IBOutlet weak var intercambioInformacion: UITextField!
    @IBOutlet weak var bicapaLipidica: UITextField!
    @IBOutlet weak var entradaSustancias: UITextField!
    @IBOutlet weak var produccionProteinas: UITextField!
    
    @IBOutlet weak var tiempoCelulaBacteriana: UILabel!
    
    @IBOutlet weak var imgCelula: UIImageView!
    
    
    var seconds = 0
    var timer = Timer()
    var isTimerRunning = false
    
    var tiempo = UILabel()
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(CelulaBacterianaViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        seconds += 1
        tiempoCelulaBacteriana.text = "Tiempo: \(seconds) seg"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest:MoleculasViewController = (segue.destination as? MoleculasViewController)!
        dest.tiempoB = tiempo.text!
    }
    
    @IBAction func goBack(_ sender: Any) {
        
        if plasmidos.text == "1" && proteina.text == "3" && flagelo.text == "8" && ribosoma.text == "10" && membranaPlasmatica.text == "5" && pilus.text == "9" && glicocalix.text == "7" && paredCelular.text == "6" && fimbria.text == "4" && citoplasma.text == "2" && informacion.text == "1" && espacioOrganelos.text == "2"  && pegarSuperficie.text == "7" && movilidadCelular.text == "8" && macromolecula.text == "3" && microvellosidad.text == "4" && intercambioInformacion.text == "9" && bicapaLipidica.text == "5" && entradaSustancias.text == "6" && produccionProteinas.text == "10" {
            
            tiempo.text = tiempoCelulaBacteriana.text
            ViewStateCelulaBacteriana.state = true
            performSegue(withIdentifier: "goBack", sender: self)
        }
        if plasmidos.text == "1" {
            plasmidos.backgroundColor = .white
        } else { plasmidos.backgroundColor = .red }
        if proteina.text == "3" {
            proteina.backgroundColor = .white
        } else { proteina.backgroundColor = .red }
        if flagelo.text == "8" {
            flagelo.backgroundColor = .white
        } else { flagelo.backgroundColor = .red }
        if ribosoma.text == "10" {
            ribosoma.backgroundColor = .white
        } else { ribosoma.backgroundColor = .red }
        if membranaPlasmatica.text == "5" {
            membranaPlasmatica.backgroundColor = .white
        } else { membranaPlasmatica.backgroundColor = .red }
        if pilus.text == "9" {
            pilus.backgroundColor = .white
        } else { pilus.backgroundColor = .red }
        if glicocalix.text == "7" {
            glicocalix.backgroundColor = .white
        } else { glicocalix.backgroundColor = .red }
        if paredCelular.text == "6" {
            paredCelular.backgroundColor = .white
        } else { paredCelular.backgroundColor = .red }
        if fimbria.text == "4" {
            fimbria.backgroundColor = .white
        } else { fimbria.backgroundColor = .red }
        if citoplasma.text == "2" {
            citoplasma.backgroundColor = .white
        } else { citoplasma.backgroundColor = .red }

        
        
        if informacion.text == "1" {
            informacion.backgroundColor = .white
        } else { informacion.backgroundColor = .red }
        if espacioOrganelos.text == "2" {
            espacioOrganelos.backgroundColor = .white
        } else { espacioOrganelos.backgroundColor = .red }
        if pegarSuperficie.text == "7" {
            pegarSuperficie.backgroundColor = .white
        } else { pegarSuperficie.backgroundColor = .red }
        if movilidadCelular.text == "8" {
            movilidadCelular.backgroundColor = .white
        } else { movilidadCelular.backgroundColor = .red }
        if macromolecula.text == "3" {
            macromolecula.backgroundColor = .white
        } else { macromolecula.backgroundColor = .red }
        if microvellosidad.text == "4" {
            microvellosidad.backgroundColor = .white
        } else { microvellosidad.backgroundColor = .red }
        if intercambioInformacion.text == "9" {
            intercambioInformacion.backgroundColor = .white
        } else { intercambioInformacion.backgroundColor = .red }
        if bicapaLipidica.text == "5" {
            bicapaLipidica.backgroundColor = .white
        } else { bicapaLipidica.backgroundColor = .red }
        if entradaSustancias.text == "6" {
            entradaSustancias.backgroundColor = .white
        } else { entradaSustancias.backgroundColor = .red }
        if produccionProteinas.text == "10" {
            produccionProteinas.backgroundColor = .white
        } else { produccionProteinas.backgroundColor = .red }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pictureTap = UITapGestureRecognizer(target: self, action: #selector(CelulaBacterianaViewController.imageTapped)); imgCelula.addGestureRecognizer(pictureTap)
        imgCelula.isUserInteractionEnabled = true

        NotificationCenter.default.addObserver(self, selector: #selector(CelulaBacterianaViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(CelulaBacterianaViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
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
