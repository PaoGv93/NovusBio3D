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
    @IBOutlet weak var juego: UILabel!
    @IBOutlet weak var storytelling: UILabel!
    @IBOutlet weak var total: UILabel!
  
    
    @IBAction func startAgain(_ sender: Any) {
        performSegue(withIdentifier: "startAgain", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Mandar correo
    @IBAction func sendEmailButtonTapped(_ sender: Any) {
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            showErrorMessage()
        }
    }
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        
        mailComposerVC.setToRecipients(["novusbio3d@gmail.com"])
        mailComposerVC.setSubject("Resumen App")
        mailComposerVC.setMessageBody("Tiempo Avatar: \(avatar) seg \n Tiempo Celulas: \(celulas) seg \n Tiempo Juego: \(juego) seg \n Tiempo Storytelling: \(storytelling) seg \n", isHTML: true)
        
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
    
}
