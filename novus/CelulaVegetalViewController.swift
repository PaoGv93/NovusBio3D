//
//  CelulaVegetalViewController.swift
//  novus
//
//  Created by Alumno on 14/06/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit

struct ViewStateCelulaVegetal {
    static var state = false
}

class CelulaVegetalViewController: UIViewController {
    
    @IBOutlet weak var citoplasma: UITextField!
    @IBOutlet weak var nucleo: UITextField!
    @IBOutlet weak var proteina: UITextField!
    @IBOutlet weak var citoesqueleto: UITextField!
    @IBOutlet weak var cloroplasto: UITextField!
    @IBOutlet weak var reticuloLiso: UITextField!
    @IBOutlet weak var membranaPlasmatica: UITextField!
    @IBOutlet weak var Ribosoma: UITextField!
    @IBOutlet weak var reticuloRugoso: UITextField!
    @IBOutlet weak var mitocondria: UITextField!
    @IBOutlet weak var Golgi: UITextField!
    @IBOutlet weak var Vacuola: UITextField!
    @IBOutlet weak var paredCelular: UITextField!
    
    @IBOutlet weak var tiempoCelulaVegetal: UILabel!
    
    //Definiciones
    @IBOutlet weak var informacionCodificada: UITextField!
    @IBOutlet weak var espacioOrganelos: UITextField!
    @IBOutlet weak var captarLuz: UITextField!
    @IBOutlet weak var fabricaEnergia: UITextField!
    @IBOutlet weak var macromolecula: UITextField!
    @IBOutlet weak var estructuraCelula: UITextField!
    @IBOutlet weak var sintesisLipidos: UITextField!
    @IBOutlet weak var agua: UITextField!
    @IBOutlet weak var bicapaLipidica: UITextField!
    @IBOutlet weak var sintesisProteinas: UITextField!
    @IBOutlet weak var empaquetar: UITextField!
    @IBOutlet weak var estructuraCelular: UITextField!
    @IBOutlet weak var produccionProteinas: UITextField!
    
    
    var seconds = 0
    var timer = Timer()
    var isTimerRunning = false
    
    var tiempo = UILabel()
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(CelulaVegetalViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        seconds += 1
        tiempoCelulaVegetal.text = "Tiempo: \(seconds) seg"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest:MoleculasViewController = (segue.destination as? MoleculasViewController)!
        dest.tiempoV = tiempo.text!
    }
    
    let zoomImageView = UIView()
    let blackBackgroundView = UIView()
    var statusImageView: UIImageView?
    
    func animateImageView(statusImageView: UIImageView){
        self.statusImageView = statusImageView
        
        if let startingFrame = statusImageView.superview?.convert(statusImageView.frame, to: nil) {
            
            statusImageView.alpha = 0
            
            blackBackgroundView.frame = self.view.frame
            blackBackgroundView.backgroundColor = UIColor.black
            blackBackgroundView.alpha = 0
            view.addSubview(zoomImageView)
            
            zoomImageView.backgroundColor = UIColor.red
            zoomImageView.frame = startingFrame
            zoomImageView.isUserInteractionEnabled = true
            zoomImageView.contentMode = .scaleAspectFill
            zoomImageView.clipsToBounds = true
            
            zoomImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector(("zoomOut"))))
            
            UIView.animate(withDuration: 0.75) { () -> Void in
                let height = (self.view.frame.width / startingFrame.width) * startingFrame.height
                let y = self.view.frame.height / 2 - height / 2
                self.zoomImageView.frame = CGRect(x:0, y:y, width: self.view.frame.width, height: height)
                self.blackBackgroundView.alpha = 1
            }
        }
    }
    
    func zoomOut(){
        if let startingFrame = statusImageView!.superview?.convert(statusImageView!.frame, to: nil) {
            
            UIView.animate(withDuration: 0.75, animations: { () -> Void in
                self.blackBackgroundView.frame = startingFrame
            self.blackBackgroundView.alpha = 0
                
            }, completion: { (didcomplete) -> Void in
                self.zoomImageView.removeFromSuperview()
                self.blackBackgroundView.removeFromSuperview()
                self.statusImageView?.alpha = 1
            })
        }
        
    }

    @IBAction func goBack(_ sender: Any) {
        if citoplasma.text == "2" && nucleo.text == "1" && proteina.text == "3" && citoesqueleto.text == "4" && cloroplasto.text == "7" && reticuloLiso.text == "9" && membranaPlasmatica.text == "5" && Ribosoma.text == "13" && reticuloRugoso.text == "6" && mitocondria.text == "8" && Golgi.text == "11" && Vacuola.text == "10" && paredCelular.text == "12" && informacionCodificada.text == "1" && espacioOrganelos.text == "2" && captarLuz.text == "7" && fabricaEnergia.text == "8" && macromolecula.text == "3" && estructuraCelula.text == "4" && sintesisLipidos.text == "9" && agua.text == "10" && bicapaLipidica.text == "5" && sintesisProteinas.text == "6" && empaquetar.text == "11" && estructuraCelular.text == "12" && produccionProteinas.text == "13" {
            
            tiempo.text = tiempoCelulaVegetal.text
            ViewStateCelulaVegetal.state = true
            performSegue(withIdentifier: "goBack", sender: self)
        }
        if citoplasma.text == "2" {
            citoplasma.backgroundColor = .white
        } else { citoplasma.backgroundColor = .red }
        if nucleo.text == "1" {
            nucleo.backgroundColor = .white
        } else { nucleo.backgroundColor = .red }
        if proteina.text == "3" {
            proteina.backgroundColor = .white
        } else { proteina.backgroundColor = .red }
        if citoesqueleto.text == "4" {
            citoesqueleto.backgroundColor = .white
        } else { citoesqueleto.backgroundColor = .red }
        if cloroplasto.text == "7" {
            cloroplasto.backgroundColor = .white
        } else { cloroplasto.backgroundColor = .red }
        if reticuloLiso.text == "9" {
            reticuloLiso.backgroundColor = .white
        } else { reticuloLiso.backgroundColor = .red }
        if membranaPlasmatica.text == "5" {
            membranaPlasmatica.backgroundColor = .white
        } else { membranaPlasmatica.backgroundColor = .red }
        if Ribosoma.text == "13" {
            Ribosoma.backgroundColor = .white
        } else { Ribosoma.backgroundColor = .red }
        if reticuloRugoso.text == "6" {
            reticuloRugoso.backgroundColor = .white
        } else { reticuloRugoso.backgroundColor = .red }
        if mitocondria.text == "8" {
            mitocondria.backgroundColor = .white
        } else { mitocondria.backgroundColor = .red }
        if Golgi.text == "11" {
            Golgi.backgroundColor = .white
        } else { Golgi.backgroundColor = .red }
        if Vacuola.text == "10" {
            Vacuola.backgroundColor = .white
        } else { Vacuola.backgroundColor = .red }
        if paredCelular.text == "12" {
            paredCelular.backgroundColor = .white
        } else { paredCelular.backgroundColor = .red }
        
        
        if informacionCodificada.text == "1" {
            informacionCodificada.backgroundColor = .white
        } else { informacionCodificada.backgroundColor = .red }
        if espacioOrganelos.text == "2" {
            espacioOrganelos.backgroundColor = .white
        } else { espacioOrganelos.backgroundColor = .red }
        if captarLuz.text == "7" {
            captarLuz.backgroundColor = .white
        } else { captarLuz.backgroundColor = .red }
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
        if agua.text == "10" {
            agua.backgroundColor = .white
        } else { agua.backgroundColor = .red }
        if bicapaLipidica.text == "5" {
            bicapaLipidica.backgroundColor = .white
        } else { bicapaLipidica.backgroundColor = .red }
        if sintesisProteinas.text == "6" {
            sintesisProteinas.backgroundColor = .white
        } else { sintesisProteinas.backgroundColor = .red }
        if empaquetar.text == "11" {
            empaquetar.backgroundColor = .white
        } else { empaquetar.backgroundColor = .red }
        if estructuraCelular.text == "12" {
            estructuraCelular.backgroundColor = .white
        } else { estructuraCelular.backgroundColor = .red }
        if produccionProteinas.text == "13" {
            produccionProteinas.backgroundColor = .white
        } else { produccionProteinas.backgroundColor = .red }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(CelulaVegetalViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(CelulaVegetalViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        runTimer()
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
