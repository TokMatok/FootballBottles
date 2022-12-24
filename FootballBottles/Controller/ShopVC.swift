//
//  ShopVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class ShopVC: UIViewController {
    
    @IBOutlet weak var shopTitle: UILabel!
    @IBOutlet weak var restoreButtonLabel: UIButton!
    @IBOutlet weak var priceButtonLabel: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundImage(set: "bg")
        
        //Localization
        shopTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Shop" : "Магазин"
        restoreButtonLabel.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Restore" : "Восстановить", for: .normal)
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    @IBAction func priceButton(_ sender: Any) {
    }
    
    @IBAction func restoreButton(_ sender: Any) {
    }
}
