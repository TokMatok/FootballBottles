//
//  TeamsVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class TeamsVC: UIViewController {
    
    //
    @IBOutlet weak var teamsTitle: UILabel!
    @IBOutlet weak var teamsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        teamsCollectionView.dataSource = self
        teamsCollectionView.delegate = self
        
        //set background
        setBackgroundImage(set: "bg")
        
        //localization
        teamsTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Teams" : "Команды"
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
}


extension TeamsVC: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teams.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        showVC(id: "players")
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "teamsCell", for: indexPath) as! TeamsCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        cell.teamsTextLbl.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "EN" : "RU"
        cell.setup(with: teams[indexPath.row])
        return cell
    }
    
}

