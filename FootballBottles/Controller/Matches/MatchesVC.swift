//
//  MatchesVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class MatchesVC: UIViewController {
    
    @IBOutlet weak var matchesTitle: UILabel!
    @IBOutlet weak var matchesSegmentedControl: UISegmentedControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
                
        collectionView.delegate = self
        collectionView.dataSource = self
        
        matchesSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white] , for: .normal)

        //Loacalization
        matchesTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Matches" : "Матчи"
        matchesSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Players" : "Игроки", forSegmentAt: 0)
        matchesSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Matches" : "Матчи", forSegmentAt: 1)
        matchesSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Transfer" : "Трансфер", forSegmentAt: 2)
        
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
    @IBAction func matchesSegmentedControl(_ sender: Any) {
        switch matchesSegmentedControl.selectedSegmentIndex {
        case 0: showVC(id: "players")
        case 1: showVC(id: "matches")
        case 2: showVC(id: "transfer")
        default: break
        }
    }
}

extension MatchesVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        matches.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "matchesCell", for: indexPath) as! MatchesCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        cell.setup(with: matches[indexPath.row])
        return cell
    }
    
}
