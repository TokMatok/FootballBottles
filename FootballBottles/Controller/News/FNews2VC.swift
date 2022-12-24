//
//  FNews2VC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class FNews2VC: UIViewController {

    @IBOutlet weak var fNews2Title: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
        //Localization
        fNews2Title.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "News" : "Новости"
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        dismiss(animated: true)
    }
}
