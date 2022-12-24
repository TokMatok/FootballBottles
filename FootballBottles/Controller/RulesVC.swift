//
//  RulesVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class RulesVC: UIViewController {

    @IBOutlet weak var rulesTitle: UILabel!
    @IBOutlet weak var rulesTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBackgroundImage(set: "bg")
        
        rulesTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Rules" : "Правила"
        rulesTextView.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "The task of the player is to distribute the balls by colours, pouring the liquid from one bottle to another. To select the desired bottle, tap once on it, then to pour the balls from the first bottle into the second one, tap once on the second bottle into which you want to pour the liquid. The level is completed when all the coloured drinks have been distributed to the individual bottles" : "Задача игрока правильно распределить шарики по цветам, переливая жидкость из одной бутылки в другую. Для того чтобы выбрать необходимую бутылку нужно нажать на нее один раз, после этого, чтобы перелить мячи из первой бутылки во вторую нужно нажать один раз на вторую бутылку в которую вы хотите перелить жидкость. Уровень считается пройденным, если все цветные напитки распределены по отдельным бутылкам"

    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        dismiss(animated: true)
    }

}

