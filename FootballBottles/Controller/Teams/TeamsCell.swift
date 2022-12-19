//
//  TeamsCell.swift
//  FootballBottles
//
//  Created by Golyakovph on 18.12.2022.
//

import UIKit

class TeamsCell: UICollectionViewCell {
    
    @IBOutlet weak var teamsImageView: UIImageView!
    @IBOutlet weak var teamsTextLbl: UILabel!
    
    func setup(with teams: Teams) {
        teamsImageView.image = teams.image
        teamsTextLbl.text = teams.title
    }
    
    
    
}
