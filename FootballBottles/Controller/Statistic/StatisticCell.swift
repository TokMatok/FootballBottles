//
//  StatisticCell.swift
//  FootballBottles
//
//  Created by Golyakovph on 20.12.2022.
//

import UIKit

class StatisticCell: UITableViewCell {
    
    @IBOutlet weak var firstTeamGoalLbl: UILabel!
    @IBOutlet weak var secondTeamGoalLbl: UILabel!
    @IBOutlet weak var statLbl: UILabel!
    
    func setup(with statistic: Statistic) {
        firstTeamGoalLbl.text = String(statistic.firstTeamGoal)
        secondTeamGoalLbl.text = String(statistic.secondTeamGoal)
        statLbl.text = statistic.stat
    }
    
}

