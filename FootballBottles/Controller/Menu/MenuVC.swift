//
//  MenuVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class MenuVC: UIViewController {
    
    @IBOutlet weak var menuTableView: UITableView!
    @IBOutlet weak var ruLanguageSetButton: UIButton!
    @IBOutlet weak var enLanguageSetButton: UIButton!
    
    //Menu cell name array
    let enMenuName = [
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
    
    let ruMenuName = [
        "Календарь",
        "Фактор",
        "Лиги",
        "Новости",
        "Заметки",
        "Избранное",
        "Отзыв",
        "Магазин",
        "Правила",
        "Интерактив"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //table view settings
        menuTableView.separatorStyle = .none
        menuTableView.isScrollEnabled = false
        menuTableView.dataSource = self
        menuTableView.delegate = self
        
    }
    
    //button action
    @IBAction func setRuLanguage(_ sender: Any) {
        restartApp()
        LocalizationSystem.sharedInstance.setLanguage(languageCode: "ru")
        ruLanguageSetButton.setImage(UIImage(named: "ruActive"), for: .normal)
    }
    
    @IBAction func setEnLanguage(_ sender: Any) {
        restartApp()
        ruLanguageSetButton.setImage(UIImage(named: "ruInactive"), for: .normal)
        LocalizationSystem.sharedInstance.setLanguage(languageCode: "en")
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        dismiss(animated: true)
    }
}


extension MenuVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        enMenuName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuCell
        
        cell.menuLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? enMenuName[indexPath.row] : ruMenuName[indexPath.row]
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
        case 9: showVC(id: "interactive")
        default:
            break
        }
    }
}
