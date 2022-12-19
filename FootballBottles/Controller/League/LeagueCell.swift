//
//  LeagueVCCell.swift
//  FootballBottles
//
//  Created by Golyakovph on 13.12.2022.
//

import UIKit

class LeagueCell: UICollectionViewCell {
    
    @IBOutlet weak var leagueImageView: UIImageView!
    @IBOutlet weak var leagueTitle: UILabel!
    
    func setup(with league: League) {
        leagueImageView.image = league.image
        leagueTitle.text = league.title
    }
    
    
}
