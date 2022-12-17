//
//  TeamsVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class TeamsVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        dismiss(animated: true)
    }
}
