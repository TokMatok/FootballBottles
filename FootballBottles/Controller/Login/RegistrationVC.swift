//
//  RegistrationVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 13.12.2022.
//

import UIKit

class RegistrationVC: UIViewController {
    
    //Labels
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var passLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var controlLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    
    //TextFields
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var controlWordField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    
    //Button
    @IBOutlet weak var regButton: UIButton!
    @IBOutlet weak var segControlButton: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TextField settings
        loginTextField.addStyleBorder()
        passTextField.addStyleBorder()
        dateTextField.addStyleBorder()
        controlWordField.addStyleBorder()
        mailTextField.addStyleBorder()
        
        //Button settings
        regButton.addStyleButton()
        segControlButton.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        
        //Localizations
        loginTextField.attributedPlaceholder = NSAttributedString(string:LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Think a login" : "Придумайте логин", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        passTextField.attributedPlaceholder = NSAttributedString(string: LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Think a password" : "Придумайте пароль", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        dateTextField.attributedPlaceholder = NSAttributedString(string: LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Enter your birth" : "Введите дату рождения", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        dateTextField.clipsToBounds = true
        controlWordField.attributedPlaceholder = NSAttributedString(string: LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Enter your control word" : "Введите контрольное слово", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        mailTextField.attributedPlaceholder = NSAttributedString(string: LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Enter your email" : "Введите вашу почту", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        regButton.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "REGISTRATION" : "РЕГИСТРАЦИЯ", for: .normal)
        segControlButton.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Registration" : "Регистрация", forSegmentAt: 0)
        segControlButton.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Login" : "Вход", forSegmentAt: 1)
        
        titleLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Registration" : "Регистрация"
        loginLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Login" : "Логин"
        passLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Password" : "Пароль"
        dateLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Date of birth" : "Дата рождения"
        controlLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Control word" : "Контрольное слово"
        mailLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Email" : "Почта"
        
        //Set background image
        setBackgroundImage(set: "bg")
    }
    
    //Button actions
    @IBAction func regSegmentControl(_ sender: UISegmentedControl) {
        switch segControlButton.selectedSegmentIndex {
        case 1:
            showVC(id: "login")
        default: break
        }
    }
    
    @IBAction func regButton(_ sender: Any) {
        showVC(id: "login")
    }
}

//Style extension

extension UIView {
    func addStyleBorder() {
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.init(red: 56/255, green: 99/255, blue: 253/255, alpha: 1).cgColor
        self.clipsToBounds = true
        self.layer.cornerRadius = 10
    }
    
    func addStyleButton() {
        self.layer.cornerRadius = 2
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 0
        self.layer.shadowColor = UIColor(red: 17/255, green: 52/255, blue: 84/255, alpha: 1).cgColor
        self.layer.masksToBounds = false
    }
}
