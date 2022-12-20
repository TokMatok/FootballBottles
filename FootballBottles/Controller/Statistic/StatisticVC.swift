//
//  StatisticVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class StatisticVC: UIViewController {
    
    @IBOutlet weak var statisticTableView: UITableView!
    @IBOutlet weak var statisticSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
        statisticTableView.delegate = self
        statisticTableView.dataSource = self
        statisticSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white] , for: .normal)

    }
    
    @IBAction func comingSoonShow(_ sender: Any) {
        showVC(id: "comingSoon")
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
    @IBAction func segmentControl(_ sender: Any) {
        switch statisticSegmentedControl.selectedSegmentIndex {
        case 0: showVC(id: "history")
        case 1: showVC(id: "statistic")
        case 2: showVC(id: "victories")
        default: break
        }
    }
}

extension StatisticVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "statisticCell", for: indexPath) as! StatisticCell
        cell.setup(with: statistic[indexPath.row])
        return cell
    }
}
