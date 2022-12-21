//
//  ComingSoonVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class ComingSoonVC: UIViewController {
    
    @IBOutlet weak var comingSoonSegmentedControl: UISegmentedControl!
    @IBOutlet weak var comingSoonCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
        comingSoonSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white] , for: .normal)
    }
    
    @IBAction func segmentControl(_ sender: Any) {
        switch comingSoonSegmentedControl.selectedSegmentIndex {
        case 0: showVC(id: "history")
        case 1: showVC(id: "statistic")
        case 2: showVC(id: "victories")
        default: break
        }
        
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
}

extension ComingSoonVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        comingSoon.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "comingSoonCell", for: indexPath) as! ComingSoonCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        cell.setup(with: comingSoon[indexPath.row])
        return cell
    }
    
    
}
