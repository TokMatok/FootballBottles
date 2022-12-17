//
//  ViewController.swift
//  FootballBottles
//
//  Created by Golyakovph on 10.12.2022.
//

import UIKit

class RegistrationVC: UIViewController {
    
    
    
    @IBOutlet weak var textFieldStyle: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textFieldStyle.layer.borderWidth = 1
        textFieldStyle.layer.borderColor = UIColor.init(red: 56/255, green: 99/255, blue: 253/255, alpha: 1).cgColor
        textFieldStyle.clipsToBounds = true
        textFieldStyle.layer.cornerRadius = 10
 
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
    }


}



