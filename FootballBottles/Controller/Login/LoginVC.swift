//
//  ViewController.swift
//  FootballBottles
//
//  Created by Golyakovph on 10.12.2022.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var loginText: UITextField!
    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginText.layer.borderWidth = 1
        loginText.layer.borderColor = UIColor(red: 56/255, green: 99/255, blue: 253/255, alpha: 1).cgColor
        loginText.attributedPlaceholder = NSAttributedString(string:"Think a login", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        loginText.clipsToBounds = true
        loginText.layer.cornerRadius = 10
        
        passText.layer.borderWidth = 1
        passText.layer.borderColor = UIColor(red: 56/255, green: 99/255, blue: 253/255, alpha: 1).cgColor
        passText.attributedPlaceholder = NSAttributedString(string:"Think a password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        passText.clipsToBounds = true
        passText.layer.cornerRadius = 10
        
        loginButton.layer.cornerRadius = 2
        loginButton.layer.shadowOffset = CGSize(width: 0, height: 2)
        loginButton.layer.shadowOpacity = 1
        loginButton.layer.shadowRadius = 0
        loginButton.layer.shadowColor = UIColor(red: 17/255, green: 52/255, blue: 84/255, alpha: 1).cgColor
        loginButton.layer.masksToBounds = false
        
        segmentControl.setTitleTextAttributes([.foregroundColor: UIColor.white] , for: .normal)
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    @IBAction func segmentControl(_ sender: Any) {
        switch segmentControl.selectedSegmentIndex {
        case 0:
            showVC(id: "reg")
        default: break
        }
    }
    
    @IBAction func loginButton(_ sender: Any) {
        showVC(id: "league")
    }
}


