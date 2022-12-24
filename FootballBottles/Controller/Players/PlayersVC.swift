//
//  PlayersVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class PlayersVC: UIViewController {
    
    
    @IBOutlet weak var playersTitle: UILabel!
    @IBOutlet weak var playersSegmentedControl: UISegmentedControl!
    @IBOutlet weak var playersTableView: UITableView!
    
    @IBOutlet weak var nameTitle: UILabel!
    @IBOutlet weak var positionTitle: UILabel!
    @IBOutlet weak var weightTitle: UILabel!
    @IBOutlet weak var growthTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
        playersTableView.dataSource = self
        playersTableView.delegate  = self
        playersSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white] , for: .normal)
        
        //Localization
        playersTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Players" : "Игроки"
        nameTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Name" : "Имя"
        positionTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Weight" : "Масса"
        positionTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Growth" : "Рост"
        
        playersSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Players" : "Игроки", forSegmentAt: 0)
        playersSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Matches" : "Матчи", forSegmentAt: 1)
        playersSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Transfer" : "Трансфер", forSegmentAt: 2)
        
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
    @IBAction func playersSegmentedControl(_ sender: Any) {
        switch playersSegmentedControl.selectedSegmentIndex {
        case 0: showVC(id: "players")
        case 1: showVC(id: "matches")
        case 2: showVC(id: "transfer")
        default: break
        }
    }
    
}

extension PlayersVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playersCell", for: indexPath) as! PlayersCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        cell.setup(with: players[indexPath.row])
        return cell
    }
    
}

