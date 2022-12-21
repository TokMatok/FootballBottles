//
//  FactorVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class FactorVC: UIViewController {
    
    @IBOutlet weak var factorTableView: UITableView!
    
    var arrNames = ["BadaBoom", "TranslateSoccer", "Football Match", "expressFat"]
    
    var selectedIndexPath: Int?
    var isColllapse = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
        factorTableView.delegate = self
        factorTableView.dataSource = self
        
        factorTableView.estimatedRowHeight = 180
        factorTableView.rowHeight = UITableView.automaticDimension
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
}


extension FactorVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if selectedIndexPath == indexPath.row && isColllapse == true {
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
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            selectedIndexPath = indexPath.row
        if  selectedIndexPath == indexPath.row {
            if self.isColllapse == false {
                isColllapse = true
            } else {
                isColllapse = false
            }
        }
        
        selectedIndexPath = indexPath.row
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
        print(isColllapse, indexPath.row)
    }
    
}

