//
//  ViewController.swift
//  FootballBottles
//
//  Created by Golyakovph on 10.12.2022.
//

import UIKit

class CalendarVC: UIViewController {
    
    //labels
    @IBOutlet weak var calendarTitle: UILabel!
    
    //buttons
    @IBOutlet weak var calendarButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set background
        setBackgroundImage(set: "bg")
        
        //localization
        calendarTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Calendar" : "Календарь"
        calendarButton.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "PICK DATE" : "ВЫБЕРИТЕ ДАТУ", for: .normal)
    }
    
    //button actions
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    @IBAction func pickDate(_ sender: Any) {
    }
    
}


