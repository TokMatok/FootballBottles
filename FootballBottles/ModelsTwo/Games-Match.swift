// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

enum MatchUrls {
    static let ru = "https://api.sofascore.com/mobile/v4/unique-tournament/203/season/42388/events"
    static let eng = "https://api.sofascore.com/mobile/v4/unique-tournament/17/season/41886/events"
    static let nidierlands = "https://api.sofascore.com/mobile/v4/unique-tournament/37/season/42256/events"
    static let germani = "https://api.sofascore.com/mobile/v4/unique-tournament/35/season/42268/events"
    static let laliga = "https://api.sofascore.com/mobile/v4/unique-tournament/8/season/42409/events"
    static let comingSoon = "https://api.sofascore.com/mobile/v4/unique-tournament/16/season/41087/events"
}

// MARK: - Welcome
struct Match: Codable {
    let sport: Sport
    let rows: Int
    let tournaments: [TournamentElement]
}

// MARK: - Sport
struct Sport: Codable {
    let id: Int
    let name, slug: String
}

// MARK: - TournamentElement
struct TournamentElement: Codable {
    let tournament: TournamentTournament
    let category: Category
    let season: Season
    let events: [Event]
}

// MARK: - Category
struct Category: Codable {
    let name: String
    let priority: Int
    let mcc: [Int]
    let id: Int
    let flag: String
}

// MARK: - Event
struct Event: Codable {
    let roundInfo: RoundInfo?
    let status: Status
    let winnerCode: Int
    let homeTeam, awayTeam: Team
    let homeScore, awayScore: Score
    let id: Int
    let startTimestamp: Int

    enum CodingKeys: String, CodingKey {
        case roundInfo, status, winnerCode, homeTeam, awayTeam, homeScore, awayScore, id, startTimestamp
    }
}

// MARK: - Score
struct Score: Codable {
    let current, display, period1, period2: Int?
    let normaltime: Int?
}

// MARK: - Team
struct Team: Codable {
    let name: String
    let slug: String
    let id: Int
    let disabled: Bool?
}

// MARK: - Season
struct Season: Codable {
//    let name,
    let year: String
    let id: Int
}

// MARK: - TournamentTournament
struct TournamentTournament: Codable {
    let name: String
    let id, uniqueID: Int
    let uniqueName: String
    let hasEventPlayerStatistics, hasRounds: Bool

    enum CodingKeys: String, CodingKey {
        case name, id
        case uniqueID = "uniqueId"
        case uniqueName, hasEventPlayerStatistics, hasRounds
    }
}

// MARK: - RoundInfo
struct RoundInfo: Codable {
    let round: Int
}

// MARK: - Status
struct Status: Codable {
    let code: Int
}
