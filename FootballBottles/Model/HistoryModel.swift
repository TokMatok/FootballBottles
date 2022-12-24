//
//  MatchesModel.swift
//  FootballBottles
//
//  Created by Golyakovph on 19.12.2022.
//

import UIKit

struct History {
    let favorites: UIImage!
    let time: String
    let date: String
    let firstTeam: String
    let secondTeam: String
    let firstTeamImg: UIImage!
    let secondTeamImg: UIImage!
}

let history: [History] = [
    History(favorites: UIImage(named: "heartEmpty"), time: "13:00", date: "14 Jule" , firstTeam: "PerfectTeam", secondTeam: "TeamLiquid", firstTeamImg: UIImage(named: "ball"), secondTeamImg: UIImage(named: "ball")),
    History(favorites: UIImage(named: "heartEmpty"), time: "13:00", date: "14 Jule" , firstTeam: "PerfectTeam", secondTeam: "TeamLiquid", firstTeamImg: UIImage(named: "ball"), secondTeamImg: UIImage(named: "ball")),
    History(favorites: UIImage(named: "heartEmpty"), time: "13:00", date: "14 Jule" , firstTeam: "PerfectTeam", secondTeam: "TeamLiquid", firstTeamImg: UIImage(named: "ball"), secondTeamImg: UIImage(named: "ball")),
    History(favorites: UIImage(named: "heartEmpty"), time: "13:00", date: "14 Jule" , firstTeam: "PerfectTeam", secondTeam: "TeamLiquid", firstTeamImg: UIImage(named: "ball"), secondTeamImg: UIImage(named: "ball"))
]
