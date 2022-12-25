//
//  HistoryVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class HistoryVC: UIViewController {
    
    @IBOutlet weak var historyTitle: UILabel!
    @IBOutlet weak var historyColectionView: UICollectionView!
    @IBOutlet weak var historySegmentedControl: UISegmentedControl!
    @IBOutlet weak var historyComingSoonButton: UIButton!
    
    var baseUrl = ""
    
    var allGames: [Event] = []

    var matchId = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
        historyColectionView.delegate = self
        historyColectionView.dataSource = self
        historySegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white] , for: .normal)
        
        
        //Localization
        historyTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "History" : "История"
        historyComingSoonButton.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Coming Soon" : "Скоро", for: .normal)
        historySegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "History" : "История", forSegmentAt: 0)
        historySegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Statistic" : "Статистика", forSegmentAt: 1)
        historySegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Victories" : "Победы", forSegmentAt: 2)
    }
    
    @IBAction func segmentControl(_ sender: Any) {
        switch historySegmentedControl.selectedSegmentIndex {
        case 0: showVC(id: "history")
        case 1: showVC(id: "statistic")
        case 2: showVC(id: "victories")
        default: break
        }
    }
    @IBAction func comingSoonShow(_ sender: Any) {
        showVC(id: "comingSoon")
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
}

extension HistoryVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "historyCell", for: indexPath) as! HistoryCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        cell.setup(with: history[indexPath.row])
        return cell
    }
    
    
}
