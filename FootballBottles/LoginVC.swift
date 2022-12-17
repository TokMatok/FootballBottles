//
//  LoginVC.swift
//  CyberExplorer
//
//  Created by Демид Стариков on 17.12.2022.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet var mainLbl: UILabel!
    
    @IBOutlet var loginLbl: UILabel!
    @IBOutlet var passLbl: UILabel!
    
    @IBOutlet var loginBut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLbl.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Login" : "Вход"
        
        loginLbl.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Login" : "Логин"
        passLbl.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Password" : "Пароль"
        
        loginBut.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "LOGIN" : "ВХОД", for: .normal)
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
    }

    @IBAction func loginAction(_ sender: UIButton) {
        showVC(id: "")
    }
}
