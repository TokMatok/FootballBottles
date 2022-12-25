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
    @IBOutlet weak var dateLbl: UILabel!
    
    @IBOutlet weak var firstTeamLbl: UILabel!
    @IBOutlet weak var secondTeamLbl: UILabel!
    @IBOutlet weak var firstTeamImg: UIImageView!
    @IBOutlet weak var secontTeamImg: UIImageView!
    
    func configure(match: Event) {
        firstTeamLbl.text = match.homeTeam.name
        secondTeamLbl.text = match.awayTeam.name
        
        
        let date = Date(timeIntervalSince1970: Double(match.startTimestamp))
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d MMM\n  "
        dateLbl.text = dateFormatter.string(from: date)
    }


}
