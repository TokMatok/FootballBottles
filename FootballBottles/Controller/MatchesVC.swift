//
//  MatchesVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class MatchesVC: UIViewController {
    
    @IBOutlet weak var metchesSegmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
        metchesSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white] , for: .normal)

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
    @IBAction func matchesSegmentedControl(_ sender: Any) {
        switch metchesSegmentedControl.selectedSegmentIndex {
        case 0: showVC(id: "players")
        case 1: showVC(id: "matches")
        case 2: showVC(id: "transfer")
        default: break
        }
    }
    
    
    
    
}
