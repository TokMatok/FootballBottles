//
//  ComingSoonCell.swift
//  FootballBottles
//
//  Created by Golyakovph on 20.12.2022.
//

import UIKit

class ComingSoonCell: UICollectionViewCell {
    
    @IBOutlet weak var favoritesImg: UIImageView!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var firstTeamLbl: UILabel!
    @IBOutlet weak var secondTeamLbl: UILabel!
    @IBOutlet weak var firstTeamImg: UIImageView!
    @IBOutlet weak var secontTeamImg: UIImageView!
    
    func setup(with comingSoon: ComingSoon) {
        favoritesImg.image = comingSoon.favorites
        timeLbl.text = comingSoon.time
        dateLbl.text = comingSoon.date
        firstTeamLbl.text = comingSoon.firstTeam
        secondTeamLbl.text = comingSoon.secondTeam
        firstTeamImg.image = comingSoon.firstTeamImg
        secontTeamImg.image = comingSoon.secondTeamImg
    }
    
}
