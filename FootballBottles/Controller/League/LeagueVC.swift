//
//  LeagueVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 13.12.2022.
//

import UIKit

class LeagueVC: UIViewController {
    
    @IBOutlet weak var leagueCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leagueCollectionView.dataSource = self
        leagueCollectionView.delegate = self
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
    }
    
    @IBAction func menuButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "menu") as! MenuVC
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }
    
}

extension LeagueVC: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return leagues.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        showVC(id: "team")
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "leagueCell", for: indexPath) as! LeagueCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        cell.setup(with: leagues[indexPath.row])
        return cell
    }
    
}


