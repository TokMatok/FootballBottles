//
//  PlayersCell.swift
//  FootballBottles
//
//  Created by Golyakovph on 18.12.2022.
//

import UIKit

class PlayersCell: UITableViewCell {
    
    @IBOutlet weak var numberLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var positionLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var growthLbl: UILabel!
    
    
    func setup(with players: Players) {
        numberLbl.text = "\(players.number)"
        nameLbl.text = players.name
        positionLbl.text = players.position
        weightLbl.text = "\(players.weight)"
        growthLbl.text = "\(players.growth)"
    }
    
}
