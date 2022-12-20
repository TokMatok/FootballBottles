//
//  HistoryCell.swift
//  FootballBottles
//
//  Created by Golyakovph on 20.12.2022.
//

import UIKit

class HistoryCell: UICollectionViewCell {
    
    @IBOutlet weak var favoritesImg: UIImageView!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var firstTeamLbl: UILabel!
    @IBOutlet weak var secondTeamLbl: UILabel!
    @IBOutlet weak var firstTeamImg: UIImageView!
    @IBOutlet weak var secontTeamImg: UIImageView!
    
    func setup(with history: History) {
        favoritesImg.image = history.favorites
        timeLbl.text = history.time
        firstTeamLbl.text = history.firstTeam
        secondTeamLbl.text = history.secondTeam
        firstTeamImg.image = history.firstTeamImg
        secontTeamImg.image = history.secondTeamImg
    }

}
