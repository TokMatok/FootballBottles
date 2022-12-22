//
//  FactorVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class FactorVC: UIViewController {
    
    @IBOutlet weak var factorTableView: UITableView!
    
    var arrNames = ["BadaBoom", "TranslateSoccer", "Football Match", "ExpressFat"]
    var arrScore = [12,32,300,123]
    
    var selectedIndexPath: Int?
    var isCollapse = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        factorTableView.delegate = self
        factorTableView.dataSource = self
        
        factorTableView.estimatedRowHeight = 180
        factorTableView.rowHeight = UITableView.automaticDimension
        
        //set background
        setBackgroundImage(set: "bg")
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
    
}


extension FactorVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if selectedIndexPath == indexPath.row && isCollapse == true {
            return 180
        } else {
            return 60
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "factorCell", for: indexPath) as! FactorCell
        cell.factorLbl.text = arrNames[indexPath.row]
        cell.factorNumberLbl.text = "\(arrScore[indexPath.row])"
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        
        if isCollapse {
            cell.factorSecondView.isHidden = false
            cell.factorButton.setImage(UIImage(named: "factorButtonActive"), for: .normal)
        } else {
            cell.factorSecondView.isHidden = true
            cell.factorButton.setImage(UIImage(named: "factorButtonInactive"), for: .normal)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndexPath = indexPath.row
        if  selectedIndexPath == indexPath.row {
            if self.isCollapse == true {
                isCollapse = false
            } else {
                isCollapse = true
            }
        }
        
        selectedIndexPath = indexPath.row
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
        print(isCollapse, indexPath.row)
    }
    
}

