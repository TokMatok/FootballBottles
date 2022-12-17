//
//  PasswordVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 13.12.2022.
//

import UIKit

class PasswordVC: UIViewController {

    @IBOutlet weak var textLabel: UITextView!
    @IBOutlet weak var forgotPassTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        textLabel.layer.shadowOffset = CGSize(width: 0, height: 3)
        forgotPassTextField.attributedPlaceholder = NSAttributedString(string:"Ener your email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        forgotPassTextField.layer.cornerRadius = 10
        forgotPassTextField.clipsToBounds = true
        forgotPassTextField.layer.borderWidth = 1
        forgotPassTextField.layer.shadowOffset = CGSize(width: 0, height: 3)
        forgotPassTextField.layer.shadowOpacity = 0.5
        forgotPassTextField.layer.borderColor = UIColor.init(red: 56/255, green: 99/255, blue: 253/255, alpha: 1).cgColor
        
        sendButton.layer.cornerRadius = 3
        sendButton.layer.shadowOffset = CGSize(width: 0, height: 2)
        sendButton.layer.shadowOpacity = 1
        sendButton.layer.shadowRadius = 0
        sendButton.layer.shadowColor = UIColor(red: 17/255, green: 52/255, blue: 84/255, alpha: 1).cgColor
        sendButton.layer.masksToBounds = false

        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)

    }
    

    @IBAction func passSendButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "login") as! LoginVC
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }
}
