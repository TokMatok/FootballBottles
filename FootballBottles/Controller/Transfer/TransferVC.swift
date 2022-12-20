//
//  TransferVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class TransferVC: UIViewController {
    
    @IBOutlet weak var transferSegmentedControl: UISegmentedControl!
    @IBOutlet weak var transferTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
        transferSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white] , for: .normal)
        
        transferTableView.dataSource = self
        transferTableView.delegate = self
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
    @IBAction func transferSegmentedControl(_ sender: Any) {
        switch transferSegmentedControl.selectedSegmentIndex {
        case 0: showVC(id: "players")
        case 1: showVC(id: "matches")
        case 2: showVC(id: "transfer")
        default: break
        }
    }
}

extension TransferVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        transfer.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "transferCell", for: indexPath) as! TransferCell
        cell.setup(with: transfer[indexPath.row])
        return cell
    }
    
}