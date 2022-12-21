//
//  VictoriesVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class VictoriesVC: UIViewController {
    
    @IBOutlet weak var victoriesSegmentedControl: UISegmentedControl!
    @IBOutlet weak var victoriesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
        victoriesCollectionView.delegate = self
        victoriesCollectionView.dataSource = self
        victoriesSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white] , for: .normal)
    }
    
    @IBAction func comingSoonShow(_ sender: Any) {
        showVC(id: "comingSoon")
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
    @IBAction func segmentControl(_ sender: Any) {
        switch victoriesSegmentedControl.selectedSegmentIndex {
        case 0: showVC(id: "history")
        case 1: showVC(id: "statistic")
        case 2: showVC(id: "victories")
        default: break
        }
    }
    
}

extension VictoriesVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        victories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "victoriesCell", for: indexPath) as! VictoriesCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        cell.setup(with: victories[indexPath.row])
        return cell
    }
    
    
}
