//
//  FinAppViewController.swift
//  novus
//
//  Created by Paola Garzón on 6/17/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

class FinAppViewController: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var avatar: UILabel!
    @IBOutlet weak var celulas: UILabel!
    @IBOutlet weak var dogma: UILabel!
    @IBOutlet weak var rompecabezas: UILabel!
    @IBOutlet weak var storytelling: UILabel!
    @IBOutlet weak var casoClinico: UILabel!
    @IBOutlet weak var nombreAlumno: UITextField!
    
    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var imgCelulas: UIImageView!
    @IBOutlet weak var imgDogma: UIImageView!
    @IBOutlet weak var imgRompecabezas: UIImageView!
    @IBOutlet weak var imgStorytelling: UIImageView!
    @IBOutlet weak var imgCasosClinicos: UIImageView!

    
    @IBAction func startAgain(_ sender: Any) {
        performSegue(withIdentifier: "startAgain", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.applyRoundCorner(imgAvatar)
        self.applyRoundCorner(imgCelulas)
        self.applyRoundCorner(imgDogma)
        self.applyRoundCorner(imgRompecabezas)
        self.applyRoundCorner(imgStorytelling)
        self.applyRoundCorner(imgCasosClinicos)

        let stateAvatar = ViewStateAvatar.state
        let stateCelulas = ViewStateGeneralCelulas.state
        let stateDogma = ViewStateGeneralDogma.state
        let stateRompecabezas = ViewStateRompecabezas.state
        let stateStorytelling = ViewStateStorytelling.state
        let stateCasos = ViewStateGeneralCasos.state

        if(stateAvatar == true){
            imgAvatar.image = UIImage(named: "evv")
        }
        if(stateCelulas == true){
            imgCelulas.image = UIImage(named: "celulaAnimal")
        }
        if(stateDogma == true){
            imgDogma.image = UIImage(named: "imgdogma")
        }
        if(stateRompecabezas == true){
            imgRompecabezas.image = UIImage(named: "rompecabezas")
        }
        if(stateStorytelling == true){
            imgStorytelling.image = UIImage(named: "COMO2")
        }
        if(stateCasos == true){
            imgCasosClinicos.image = UIImage(named: "casosClinicos")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Mandar correo
    @IBAction func sendEmailButtonTapped(_ sender: Any) {
        if nombreAlumno.text != ""{
            
            let mailComposeViewController = configuredMailComposeViewController()
            if MFMailComposeViewController.canSendMail() {
                self.present(mailComposeViewController, animated: true, completion: nil)
            } else {
                showErrorMessage()
            }
            
            // create the alert
            let alert = UIAlertController(title: "", message: "Enviado con éxito", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        else{
            // create the alert
            let alert = UIAlertController(title: "Error", message: "Debes poner tu nombre para enviar", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        
        mailComposerVC.setToRecipients(["novusbio3d@gmail.com"])
        mailComposerVC.setSubject("Resumen App")
        mailComposerVC.setMessageBody("Nombre del alumno: \(nombreAlumno.text) \n Puntos Avatar: \(avatar.text) seg \n Puntos Celulas: \(celulas.text) seg \n Puntos Juego: \(dogma.text) seg \n Puntos Rompecabezas: \(rompecabezas.text) seg \n Puntos Storytelling: \(storytelling.text) seg \n Puntos casos Clinicos: \(casoClinico.text) seg \n", isHTML: false)
        
        return mailComposerVC
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Swift.Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    func showErrorMessage() {
        let alertMessage = UIAlertController(title: "Could not sent email", message: "Check if your device have email support!", preferredStyle: UIAlertControllerStyle.alert)
        let action = UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil)
        alertMessage.addAction(action)
        self.present(alertMessage, animated: true, completion: nil)
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
