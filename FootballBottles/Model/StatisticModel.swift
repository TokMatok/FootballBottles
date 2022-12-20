//
//  StatisticModel.swift
//  FootballBottles
//
//  Created by Golyakovph on 20.12.2022.
//

import UIKit

struct Statistic {
    let firstTeamGoal: Int
    let secondTeamGoal: Int
    let stat: String
}

let statistic: [Statistic] = [
Statistic(firstTeamGoal: 6, secondTeamGoal: 5, stat: "Goals"),
Statistic(firstTeamGoal: 0, secondTeamGoal: 3, stat: "Corners"),
Statistic(firstTeamGoal: 2, secondTeamGoal: 1, stat: "Attacks"),
Statistic(firstTeamGoal: 4, secondTeamGoal: 4, stat: "Red cards"),
Statistic(firstTeamGoal: 1, secondTeamGoal: 0, stat: "Yellow cards")
]
