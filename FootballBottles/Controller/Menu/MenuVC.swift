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
        if cell.isSelected {
            cell.menuLabel.textColor = UIColor.black
        }
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            nextSreen(indentifier: "calendar")
        case 1:
            nextSreen(indentifier: "factor")
        case 2:
            nextSreen(indentifier: "league")
        case 3:
            nextSreen(indentifier: "news")
        case 4:
            nextSreen(indentifier: "notes")
        case 5:
            nextSreen(indentifier: "favorites")
        case 6:
            nextSreen(indentifier: "reviews")
        case 7:
            nextSreen(indentifier: "shop")
        case 8:
            nextSreen(indentifier: "rules")
        case 9:
            nextSreen(indentifier: "interactive")
        default:
            break
        }
    }
    
    func nextSreen(indentifier: String) {
        let vc = storyboard?.instantiateViewController(withIdentifier: indentifier)
        vc!.modalPresentationStyle = .fullScreen
        vc!.modalTransitionStyle = .crossDissolve
        present(vc!, animated: true)
    }
    
    
}
