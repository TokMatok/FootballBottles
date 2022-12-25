//
//  LeagueVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 13.12.2022.
//

import UIKit

class LeagueVC: UIViewController {
    //Label
    @IBOutlet weak var leagueCollectionView: UICollectionView!
    @IBOutlet weak var leagueTitle: UILabel!
    
    //Leagues liga name
    let leagues = ["English Premier League", "Budesliga", "LaLiga", "Eredivise", "Russian Premier League"]
    
    let baseUrl: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leagueCollectionView.dataSource = self
        leagueCollectionView.delegate = self
        
        //Set background
        setBackgroundImage(set: "bg")
        
        //Localization
        leagueTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "League" : "Лига"
    }
    
    //Button action
    @IBAction func menuButton(_ sender: Any) {
        showVC(id: "menu")
    }
    
}

extension LeagueVC: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return leagues.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let url: String
        
        switch indexPath.row {
        case 0:
            url = Leagues.enLeague
        case 1:
            url = Leagues.budesLiga
        case 2:
            url = Leagues.laLiga
        case 3:
            url = Leagues.erLiga
        default:
            url = Leagues.ruLeague
        }
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "team") as! TeamsVC
        vc.baseUrl = url + Leagues.EndPoint.teams
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "leagueCell", for: indexPath) as! LeagueCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        cell.leagueImageView.image = UIImage(named: "\(indexPath.row + 11)")
        cell.leagueTitle.text = leagues[indexPath.row]
        return cell
    }
}


