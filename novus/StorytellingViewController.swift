//
//  StorytellingViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/12/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit
import AVFoundation

struct ViewStateStorytelling {
    static var state = false
}

class StorytellingViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
        
    @IBOutlet weak var quienPicker: UIPickerView!
    @IBOutlet weak var porquePicker: UIPickerView!
    @IBOutlet weak var conQuienPicker: UIPickerView!
    @IBOutlet weak var comoPicker: UIPickerView!
    @IBOutlet weak var cuandoPicker: UIPickerView!
    @IBOutlet weak var dondePicker: UIPickerView!
    @IBOutlet weak var propuestaPicker: UIPickerView!
    @IBOutlet weak var frase: UILabel!
    
    var fraseQuien = String()
    var frasePorque = String()
    var fraseConQuien = String()
    var fraseComo = String()
    var fraseCuando = String()
    var fraseDonde = String()
    var frasePropuesta = String()
    var fraseFinal = String()
    
    
    let quien: [UIImage] = [UIImage(named: "QUIEN1")!, UIImage(named: "QUIEN2")!, UIImage(named: "QUIEN3")!, UIImage(named: "QUIEN4")!, UIImage(named: "QUIEN5")!, UIImage(named: "QUIEN6")!]
    let porque: [UIImage] = [UIImage(named: "PORQUE1")!, UIImage(named: "PORQUE2")!, UIImage(named: "PORQUE3")!, UIImage(named: "PORQUE4")!, UIImage(named: "PORQUE5")!, UIImage(named: "PORQUE6")!, UIImage(named: "PORQUE7")!, UIImage(named: "PORQUE8")!]
    let conQuien: [UIImage] = [UIImage(named: "CONQUIEN1")!, UIImage(named: "CONQUIEN2")!, UIImage(named: "CONQUIEN3")!, UIImage(named: "CONQUIEN4")!, UIImage(named: "CONQUIEN5")!, UIImage(named: "CONQUIEN6")!]
    let como: [UIImage] = [UIImage(named: "COMO1")!, UIImage(named: "COMO2")!, UIImage(named: "COMO3")!, UIImage(named: "COMO4")!, UIImage(named: "COMO5")!, UIImage(named: "COMO6")!]
    let cuando: [UIImage] = [UIImage(named: "CUANDO1")!, UIImage(named: "CUANDO2")!, UIImage(named: "CUANDO3")!, UIImage(named: "CUANDO4")!, UIImage(named: "CUANDO5")!]
    let donde: [UIImage] = [UIImage(named: "DONDE1")!, UIImage(named: "DONDE2")!, UIImage(named: "DONDE3")!, UIImage(named: "DONDE4")!, UIImage(named: "DONDE5")!]
    let propuesta: [UIImage] = [UIImage(named: "SOLUCION1")!, UIImage(named: "SOLUCION2")!, UIImage(named: "SOLUCION3")!, UIImage(named: "SOLUCION4")!, UIImage(named: "SOLUCION5")!, UIImage(named: "SOLUCION6")!]
    
    
    //ir a los puntos finales
    @IBAction func irPuntos(_ sender: Any) {
        performSegue(withIdentifier: "irPuntos", sender: self)
    }
    
    
    @IBAction func goCasosClinicos(_ sender: Any) {
        
            ViewStateStorytelling.state = true
            performSegue(withIdentifier: "SecondVideo", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fraseFinal = "Francisco" + "fue atacado por el virus del ebola, " + "cuando convivia con la familia " + "ya que tomo un helado contaminado"  + "en un día muy lluvioso " + "en una casa de campo que teniamos " + "se tomará vitaminas."
        
        frase.text = fraseFinal
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        if (pickerView == quienPicker) {
            switch row {
                
                case 0:
                    fraseQuien = "Francisco "
                
                case 1:
                    fraseQuien = "Alenjandra "
                
                case 2:
                    fraseQuien = "Ernestina "
                
                case 3:
                    fraseQuien = "Los gemelos loranca "
                
                case 4:
                    fraseQuien = "Juanita "
                
                case 5:
                    fraseQuien = "Jesús "
                
                default:
                    fraseQuien = "Francisco "
            }
        }
        else if (pickerView == porquePicker) {
            switch row {
                
                case 0:
                    frasePorque = "fue atacado por el virus del ebola, "
                
                case 1:
                    frasePorque = "se infectó de hepatitis B. "
                
                case 2:
                    frasePorque = "se infectó de un bacteriófago, "
                
                case 3:
                    frasePorque = "se contagió de influenza, "
                
                case 4:
                    frasePorque = "se infectó con adenovirus, "
                
                case 5:
                    frasePorque = "se infecto de VIH, "
                
                case 6:
                    frasePorque = "fue alterado por una molécula, "
                
                case 7:
                    frasePorque = "se expuso a una radiación, "
                
                default:
                    frasePorque = "fue atacado por el virus del ebola, "
            }
        }
        else if pickerView == conQuienPicker {
            switch row {
                
                case 0:
                    fraseConQuien = "cuando convivia con la familia "
                
                case 1:
                    fraseConQuien = "en un restaurante elegante "
                
                case 2:
                    fraseConQuien = "cuando era niña "
                
                case 3:
                    fraseConQuien = "en un viaje a las montañas "
                
                case 4:
                    fraseConQuien = "en un viaje con la familia "
                
                case 5:
                    fraseConQuien = "en una mina de las montañas "
                
                default:
                    fraseConQuien = "cuando convivia con la familia "
            }
        }
        else if pickerView == comoPicker {
            switch row {
                
                case 0:
                    fraseComo = "ya que tomo un helado contaminado "
                
                case 1:
                    fraseComo = "ya que tomo la mano de un enfermo "
                
                case 2:
                    fraseComo = "teniendo un helado contaminado "
                
                case 3:
                    fraseComo = "al tener contacto con las manos "
                
                case 4:
                    fraseComo = "al inyectarse un isotopo radoactivo por error "
                
                case 5:
                    fraseComo = "al tomar agua contaminada "
                
                default:
                    fraseComo = "ya que tomo un helado contaminado "
            }
        }
        else if pickerView == cuandoPicker {
            switch row {
                
                case 0:
                    fraseCuando = "en un día muy lluvioso "
                
                case 1:
                    fraseCuando = "en fin de año "
                
                case 2:
                    fraseCuando = "estabamos en la parte mas alta del viaje a la media noche "
                
                case 3:
                    fraseCuando = "en un tiempo en el que trabajaba "
                
                case 4:
                    fraseCuando = "en un contacto de poco tiempo "
                
                default:
                    fraseCuando = "en un día muy lluvioso "
            }
        }
        else if pickerView == dondePicker {
            switch row {
                
                case 0:
                    fraseDonde = "en una casa de campo que teniamos "
                
                case 1:
                    fraseDonde = "al estar en un cafe "
                
                case 2:
                    fraseDonde = "después de una presentación "
                
                case 3:
                    fraseDonde = "en la playa "
                
                case 4:
                    fraseDonde = "en el transporte del viaje "
                
                default:
                    fraseDonde = "en una casa de campo que teniamos "
            }
        }
        else if pickerView == propuestaPicker {
            switch row {
                
                case 0:
                    frasePropuesta = "se tomará vitaminas."
                
                case 1:
                    frasePropuesta = "buscará a una bruja."
                
                case 2:
                    frasePropuesta = "buscar a una botica."
                
                case 3:
                    frasePropuesta = "buscar tratamiento médico."
                
                case 4:
                    frasePropuesta = "busca a un médico."
                
                case 5:
                    frasePropuesta = "se alteró por una molécula."
                
                default:
                    frasePropuesta = "se tomará vitaminas."
            }
        }
        
        fraseFinal = fraseQuien + " " + frasePorque + " " + fraseConQuien + " " + fraseComo + " " + fraseCuando + " " + fraseDonde + " " + frasePropuesta
        
        frase.text = fraseFinal
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView == quienPicker) {
            return quien.count
        }
        else if (pickerView == porquePicker) {
            return porque.count
        }
        else if pickerView == conQuienPicker {
            return conQuien.count
        }
        else if pickerView == comoPicker {
            return como.count
        }
        else if pickerView == cuandoPicker {
            return cuando.count
        }
        else if pickerView == dondePicker {
            return donde.count
        }
        else{
            return propuesta.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 200
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
            let quienView = UIView(frame: CGRect(x: 0, y: 0, width:quienPicker.bounds.width, height: 70))
            let porqueView = UIView(frame: CGRect(x: 0, y: 0, width:porquePicker.bounds.width, height: 70))
            let conQuienView = UIView(frame: CGRect(x: 0, y: 0, width:conQuienPicker.bounds.width, height: 70))
            let comoView = UIView(frame: CGRect(x: 0, y: 0, width:comoPicker.bounds.width, height: 70))
            let cuandoView = UIView(frame: CGRect(x: 0, y: 0, width:cuandoPicker.bounds.width, height: 70))
            let dondeView = UIView(frame: CGRect(x: 0, y: 0, width:dondePicker.bounds.width, height: 70))
            let propuestaView = UIView(frame: CGRect(x: 0, y: 0, width:propuestaPicker.bounds.width, height: 70))


            let quienImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: quienView.bounds.width, height: 70))
            let porqueImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: quienView.bounds.width, height: 70))
            let conQuienImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: quienView.bounds.width, height: 70))
            let comoImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: quienView.bounds.width, height: 70))
            let cuandoImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: quienView.bounds.width, height: 70))
            let dondeImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: quienView.bounds.width, height: 70))
            let propuestaImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: quienView.bounds.width, height: 70))

            switch row {
                case 0:
                    quienImageView.image = quien[0]
                    porqueImageView.image = porque[0]
                    conQuienImageView.image = conQuien[0]
                    comoImageView.image = como[0]
                    cuandoImageView.image = cuando[0]
                    dondeImageView.image = donde[0]
                    propuestaImageView.image = propuesta[0]

                case 1:
                    quienImageView.image = quien[1]
                    porqueImageView.image = porque[1]
                    conQuienImageView.image = conQuien[1]
                    comoImageView.image = como[1]
                    cuandoImageView.image = cuando[1]
                    dondeImageView.image = donde[1]
                    propuestaImageView.image = propuesta[1]

                case 2:
                    quienImageView.image = quien[2]
                    porqueImageView.image = porque[2]
                    conQuienImageView.image = conQuien[2]
                    comoImageView.image = como[2]
                    cuandoImageView.image = cuando[2]
                    dondeImageView.image = donde[2]
                    propuestaImageView.image = propuesta[2]
                
                case 3:
                    quienImageView.image = quien[3]
                    porqueImageView.image = porque[3]
                    conQuienImageView.image = conQuien[3]
                    comoImageView.image = como[3]
                    cuandoImageView.image = cuando[3]
                    dondeImageView.image = donde[3]
                    propuestaImageView.image = propuesta[3]
                
                case 4:
                    quienImageView.image = quien[4]
                    porqueImageView.image = porque[4]
                    conQuienImageView.image = conQuien[4]
                    comoImageView.image = como[4]
                    cuandoImageView.image = cuando[4]
                    dondeImageView.image = donde[4]
                    propuestaImageView.image = propuesta[4]
                
                case 5:
                    quienImageView.image = quien[5]
                    porqueImageView.image = porque[5]
                    conQuienImageView.image = conQuien[5]
                    comoImageView.image = como[5]
                    propuestaImageView.image = propuesta[5]
  
                case 6:
                    porqueImageView.image = porque[6]
                
                case 7:
                    porqueImageView.image = porque[7]

                default:
                    quienImageView.image = quien[0]
                    porqueImageView.image = porque[0]
                    conQuienImageView.image = conQuien[0]
                    comoImageView.image = como[0]
                    cuandoImageView.image = cuando[0]
                    dondeImageView.image = donde[0]
                    propuestaImageView.image = propuesta[0]

            } 
        
        if pickerView == quienPicker {
            quienView.addSubview(quienImageView)
            return quienView
        } else if pickerView == porquePicker {
            porqueView.addSubview(porqueImageView)
            return porqueView
        } else if pickerView == conQuienPicker {
            conQuienView.addSubview(conQuienImageView)
            return conQuienView
        } else if pickerView == comoPicker {
            comoView.addSubview(comoImageView)
            return comoView
        } else if pickerView == cuandoPicker {
            cuandoView.addSubview(cuandoImageView)
            return cuandoView
        } else if pickerView == dondePicker {
            dondeView.addSubview(dondeImageView)
            return dondeView
        } else {
            propuestaView.addSubview(propuestaImageView)
            return propuestaView
        }
    }

}
