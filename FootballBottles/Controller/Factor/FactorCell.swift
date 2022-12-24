//
//  FactorCell.swift
//  FootballBottles
//
//  Created by Golyakovph on 20.12.2022.
//

import UIKit

class FactorCell: UITableViewCell {
    
    //Top view
    @IBOutlet weak var factorLbl: UILabel!
    @IBOutlet weak var factorNumberLbl: UILabel!
    @IBOutlet weak var factorButton: UIButton!
    
    //Bottom view
    @IBOutlet weak var factorBottomView: UIImageView!
    
    //Left Team label
    @IBOutlet weak var factorFirstTeamImage: UIImageView!
    @IBOutlet weak var factorFirstTeamName: UILabel!
    @IBOutlet weak var factorWinFirstTeam: UILabel!
    @IBOutlet weak var factorFirstTeam: UILabel!
    
    //Middle label
    @IBOutlet weak var factorTime: UILabel!
    @IBOutlet weak var factorDate: UILabel!
    @IBOutlet weak var factorMidWin: UILabel!
    @IBOutlet weak var factorMid: UILabel!
    
    //Right Team lbl
    @IBOutlet weak var factorSecondTeamImage: UIImageView!
    @IBOutlet weak var factorSecondTeamName: UILabel!
    @IBOutlet weak var factorSecondTeamWin: UILabel!
    @IBOutlet weak var factorSecondTeam: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Factor bottom lable style
        cornerStyle(name: factorFirstTeam)
        cornerStyle(name: factorMid)
        cornerStyle(name: factorSecondTeam)
        
        //Localization
        factorLbl.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Factor" : "Коэффициент"
        factorWinFirstTeam.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "win 1" : "победа 1"
        factorSecondTeamWin.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "win2" : "победа 2"
        factorDate.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "10 January 2022" : "10 января 2022"
        factorMidWin.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Draw" : "ничья"
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

//Factor bottom lable style
func cornerStyle(name layer: UILabel) {
    layer.layer.cornerRadius = 5
    layer.bounds = layer.layer.bounds.insetBy(dx: -2, dy: -2)
    layer.layer.borderWidth = 2
    layer.layer.borderColor = UIColor(red: 0.067, green: 0.204, blue: 0.329, alpha: 1).cgColor
}

