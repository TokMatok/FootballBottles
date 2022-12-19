//
//  MatchesCell.swift
//  FootballBottles
//
//  Created by Golyakovph on 19.12.2022.
//

import UIKit

class MatchesCell: UICollectionViewCell {
    
    @IBOutlet weak var favoritesImg: UIImageView!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var firstTeamLbl: UILabel!
    @IBOutlet weak var secondTeamLbl: UILabel!
    @IBOutlet weak var firstTeamImg: UIImageView!
    @IBOutlet weak var secontTeamImg: UIImageView!
    
    func setup(with matches: Matches) {
        favoritesImg.image = matches.favorites
        timeLbl.text = matches.time
        firstTeamLbl.text = matches.firstTeam
        secondTeamLbl.text = matches.secondTeam
        firstTeamImg.image = matches.firstTeamImg
        secontTeamImg.image = matches.secondTeamImg
    }

}
