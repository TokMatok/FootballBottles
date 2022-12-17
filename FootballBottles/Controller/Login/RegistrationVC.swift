//
//  RegistrationVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 13.12.2022.
//

import UIKit

class RegistrationVC: UIViewController {
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var dateOfBirth: UITextField!
    @IBOutlet weak var controlWord: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var regButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginTextField.layer.borderWidth = 1
        loginTextField.layer.borderColor = UIColor.init(red: 56/255, green: 99/255, blue: 253/255, alpha: 1).cgColor
        loginTextField.attributedPlaceholder = NSAttributedString(string:"Think a login", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        loginTextField.clipsToBounds = true
        loginTextField.layer.cornerRadius = 10
        
        passTextField.layer.borderWidth = 1
        passTextField.layer.borderColor = UIColor.init(red: 56/255, green: 99/255, blue: 253/255, alpha: 1).cgColor
        passTextField.attributedPlaceholder = NSAttributedString(string:"Think a password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        passTextField.clipsToBounds = true
        passTextField.layer.cornerRadius = 10
        
        dateOfBirth.layer.borderWidth = 1
        dateOfBirth.layer.borderColor = UIColor.init(red: 56/255, green: 99/255, blue: 253/255, alpha: 1).cgColor
        dateOfBirth.attributedPlaceholder = NSAttributedString(string:"Enter your birth", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        dateOfBirth.clipsToBounds = true
        dateOfBirth.layer.cornerRadius = 10
        
        controlWord.layer.borderWidth = 1
        controlWord.layer.borderColor = UIColor.init(red: 56/255, green: 99/255, blue: 253/255, alpha: 1).cgColor
        controlWord.attributedPlaceholder = NSAttributedString(string:"Enter your control word", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        controlWord.clipsToBounds = true
        controlWord.layer.cornerRadius = 10
        
        email.layer.borderWidth = 1
        email.layer.borderColor = UIColor.init(red: 56/255, green: 99/255, blue: 253/255, alpha: 1).cgColor
        email.attributedPlaceholder = NSAttributedString(string:"Enter your email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        email.clipsToBounds = true
        email.layer.cornerRadius = 10
        
        regButton.layer.cornerRadius = 2
        regButton.layer.shadowOffset = CGSize(width: 0, height: 2)
        regButton.layer.shadowOpacity = 1
        regButton.layer.shadowRadius = 0
        regButton.layer.shadowColor = UIColor(red: 17/255, green: 52/255, blue: 84/255, alpha: 1).cgColor
        regButton.layer.masksToBounds = false
        
        segmentControl.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
    }
    
    @IBAction func regSegmentControl(_ sender: UISegmentedControl) {
        switch segmentControl.selectedSegmentIndex {
        case 1:
            let vc = storyboard?.instantiateViewController(withIdentifier: "login") as! LoginVC
            vc.modalPresentationStyle = .fullScreen
            vc.modalTransitionStyle = .crossDissolve
            present(vc, animated: true)
        default: break
        }
    }
    
    @IBAction func regButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "login") as! LoginVC
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }
    
    
}
