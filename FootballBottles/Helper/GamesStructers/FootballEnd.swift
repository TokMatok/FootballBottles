//
//  FootballEnd.swift
//  Sports-Factor
//
//  Created by Демид Стариков on 04.09.2022.
//

import Foundation

struct CompleatedGames: Codable {
    let timeRequest: Double
    let capacityRequests, remainRequests, lastTimeYourKey, dateGames: String
    let gamesEnd: [GamesEnd]

    enum CodingKeys: String, CodingKey {
        case timeRequest = "time_request"
        case capacityRequests = "capacity_requests"
        case remainRequests = "remain_requests"
        case lastTimeYourKey = "last_time_your_key"
        case dateGames = "date_games"
        case gamesEnd = "games_end"
    }
}

// MARK: - GamesEnd
struct GamesEnd: Codable {
    let gameID, time, timeStatus: String
    let home, away: EndAway
    let score: String

    enum CodingKeys: String, CodingKey {
        case gameID = "game_id"
        case time
        case timeStatus = "time_status"
        case home, score, away
    }
}

// MARK: - Away
struct EndAway: Codable {
    let name: String

    enum CodingKeys: String, CodingKey {
        case name
    }
}
