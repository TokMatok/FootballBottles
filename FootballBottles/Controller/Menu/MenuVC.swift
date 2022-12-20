//
//  MenuVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class MenuVC: UIViewController {
    
    @IBOutlet weak var menuTableView: UITableView!
    
    let cellName = [
        "Calendar",
        "Factor",
        "League",
        "News",
        "Notes",
        "Favorites",
        "Reviews",
        "Shop",
        "Rules",
        "Interactive"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuTableView.separatorStyle = .none
        menuTableView.isScrollEnabled = false
        menuTableView.dataSource = self
        menuTableView.delegate = self
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        dismiss(animated: true)
    }
}

extension MenuVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuCell
        cell.menuLabel.text = cellName[indexPath.row]
        cell.menuImage.image = UIImage(named: "\(indexPath.row + 1)")
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0: showVC(id: "calendar")
        case 1: showVC(id: "factor")
        case 2: showVC(id: "league")
        case 3: showVC(id: "news")
        case 4: showVC(id: "notes")
        case 5: showVC(id: "favorites")
        case 6: showVC(id: "reviews")
        case 7: showVC(id: "shop")
        case 8: showVC(id: "rules")
        case 9: showVC(id: "history")
        default:
            break
        }
    }
}
