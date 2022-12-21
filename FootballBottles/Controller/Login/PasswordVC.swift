//
//  PasswordVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 13.12.2022.
//

import UIKit

class PasswordVC: UIViewController {
    
    @IBOutlet weak var mailLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var forgotPassTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TextField settings
        forgotPassTextField.addStyleBorder()
        
        //Button settings
        sendButton.addStyleButton()
        
        //Set background image
        setBackgroundImage(set: "bg")
        
        //Localization
        forgotPassTextField.attributedPlaceholder = NSAttributedString(string:LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Enter your email" : "Введите почту", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        textView.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Forgot your password?" : "Забыли пароль?"
        mailLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Email" : "Почта"
        sendButton.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Send" : "Отправить", for: .normal)
    }
    
    @IBAction func passSendButton(_ sender: Any) {
        showVC(id: "login")
    }
}
