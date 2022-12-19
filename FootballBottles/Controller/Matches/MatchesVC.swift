//
//  MatchesVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class MatchesVC: UIViewController {
    
    @IBOutlet weak var metchesSegmentedControl: UISegmentedControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
        metchesSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white] , for: .normal)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
    @IBAction func matchesSegmentedControl(_ sender: Any) {
        switch metchesSegmentedControl.selectedSegmentIndex {
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
        cell.setup(with: matches[indexPath.row])
        
        return cell
    }
}
