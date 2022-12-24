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
Statistic(firstTeamGoal: 6, secondTeamGoal: 5, stat: LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Goals" : "Голы"),
Statistic(firstTeamGoal: 0, secondTeamGoal: 3, stat: LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Corners" : "Угловые"),
Statistic(firstTeamGoal: 2, secondTeamGoal: 1, stat: LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Attacks" : "Атаки"),
Statistic(firstTeamGoal: 4, secondTeamGoal: 4, stat: LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Red cards" : "Красные карточки"),
Statistic(firstTeamGoal: 1, secondTeamGoal: 0, stat: LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Yellow cards" : "Желтые карточки")
]
