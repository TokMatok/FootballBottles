// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Players: Codable {
    let confirmed: Bool
    let home, away: AwayPlayers
}

// MARK: - Away
struct AwayPlayers: Codable {
    let players: [PlayerElement]
}

// MARK: - ErColor
struct ErColor: Codable {
    let primary, number, outline, fancyNumber: String
}

// MARK: - PlayerElement
struct PlayerElement: Codable {
    let player: PlayerPlayer
}

// MARK: - PlayerPlayer
struct PlayerPlayer: Codable {
    let name: String
    let shortName: String
    let position: Position
}

// MARK: - Country
struct Country: Codable {
    let alpha2, name: String
}

enum MarketValueCurrency: String, Codable {
    case eur = "EUR"
}

enum Position: String, Codable {
    case d = "D"
    case f = "F"
    case g = "G"
    case m = "M"
}
