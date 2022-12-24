//
//  InteractiveVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class InteractiveVC: UIViewController {

    @IBOutlet weak var interactiveTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBackgroundImage(set: "bg")
        interactiveTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Interactive" : "Интерактив"
    }
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
