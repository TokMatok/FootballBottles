//
//  FNewsVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class FNewsVC: UIViewController {

    @IBOutlet weak var fNewsTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
        //Localization
        fNewsTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "News" : "Новости"
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
