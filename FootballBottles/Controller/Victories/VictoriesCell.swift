//
//  VictoriesCell.swift
//  FootballBottles
//
//  Created by Golyakovph on 20.12.2022.
//

import UIKit

class VictoriesCell: UICollectionViewCell {
    
    @IBOutlet weak var favoritesImg: UIImageView!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var firstTeamLbl: UILabel!
    @IBOutlet weak var secondTeamLbl: UILabel!
    @IBOutlet weak var firstTeamImg: UIImageView!
    @IBOutlet weak var secontTeamImg: UIImageView!
    
    func setup(with victories: Victories) {
        favoritesImg.image = victories.favorites
        timeLbl.text = victories.time
        date.text = victories.date
        firstTeamLbl.text = victories.firstTeam
        secondTeamLbl.text = victories.secondTeam
        firstTeamImg.image = victories.firstTeamImg
        secontTeamImg.image = victories.secondTeamImg
    }

}


