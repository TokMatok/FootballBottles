//
//  ViewController.swift
//  FootballBottles
//
//  Created by Golyakovph on 10.12.2022.
//

import UIKit

class LoginVC: UIViewController {
    
    //TextFields
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    //Lable
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var passLabel: UILabel!
    
    //Button
    @IBOutlet weak var segControlButton: UISegmentedControl!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotPassButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Text field settings
        loginTextField.addStyleBorder()
        passTextField.addStyleBorder()
        
        //Button ssettings
        loginButton.addStyleButton()
        segControlButton.setTitleTextAttributes([.foregroundColor: UIColor.white] , for: .normal)
        
        //Set background image
        setBackgroundImage(set: "bg")
        
        //Localization
        loginTextField.attributedPlaceholder = NSAttributedString(string: LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Enter login" : "Введите логин", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        passTextField.attributedPlaceholder = NSAttributedString(string: LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Enter password" : "Введите пароль", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        titleLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Login" : "Вход"
        loginLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Login" : "Логин"
        passLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Password" : "Пароль"
        segControlButton.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Registration" : "Регистрация", forSegmentAt: 0)
        segControlButton.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Login" : "Вход", forSegmentAt: 1)
        loginButton.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Login" : "Вход", for: .normal)
        forgotPassButton.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Forgot password?" : "Забыли пароль?", for: .normal)
    }
    
    //Button actions
    @IBAction func segmentControl(_ sender: Any) {
        switch segControlButton.selectedSegmentIndex {
        case 0: showVC(id: "reg")
        default: break
        }
    }
    
    @IBAction func loginButton(_ sender: Any) {
        showVC(id: "league")
    }
}


