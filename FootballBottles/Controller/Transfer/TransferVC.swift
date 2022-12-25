//
//  TransferVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class TransferVC: UIViewController {
    
    @IBOutlet weak var transferLbl: UILabel!
    @IBOutlet weak var transferSegmentedControl: UISegmentedControl!
    @IBOutlet weak var transferTableView: UITableView!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var clubLbl: UILabel!
    @IBOutlet weak var costsLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
        transferSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white] , for: .normal)
        
        transferTableView.dataSource = self
        transferTableView.delegate = self
        
        //Localization
        transferLbl.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Transfer" : "Трансфер"
        nameLbl.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Name" : "Имя"
        clubLbl.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Club" : "Клуб"
        costsLbl.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Costs" : "Стоимость"
        transferSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Players" : "Игроки", forSegmentAt: 0)
        transferSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Matches" : "Матчи", forSegmentAt: 1)
        transferSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Transfer" : "Трансфер", forSegmentAt: 2)
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
    @IBAction func transferSegmentedControl(_ sender: Any) {
        switch transferSegmentedControl.selectedSegmentIndex {
        case 0: showVC(id: "players")
        case 1: showVC(id: "matches")
        case 2: showVC(id: "transfer")
        default: break
        }
    }
}

extension TransferVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "transferCell", for: indexPath) as! TransferCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        return cell
    }
    
}
