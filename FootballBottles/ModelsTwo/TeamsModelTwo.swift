// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct TeamsModel: Codable {
    let teams: [TeamTeam]
}

// MARK: - Team
struct TeamTeam: Codable {
    let name, slug, shortName: String
    let type, id: Int
    let country: CountryTeam
}

// MARK: - Category
//struct CategoryTeam: Codable {
//    let name: CategoryNameTeam
//    let slug: FlagTeam
//    let sport: SportTeam
//    let id: Int
//    let flag: FlagTeam
//    let alpha2: Alpha2Team
//}
//
//enum Alpha2Team: String, Codable {
//    case en = "EN"
//}
//
//enum FlagTeam: String, Codable {
//    case england = "england"
//}
//
//enum CategoryNameTeam: String, Codable {
//    case england = "England"
//}
//
//// MARK: - Sport
//struct SportTeam: Codable {
//    let name: SportNameTeam
//    let slug: SlugTeam
//    let id: Int
//}
//
//enum SportNameTeam: String, Codable {
//    case football = "Football"
//}
//
//enum SlugTeam: String, Codable {
//    case football = "football"
//}
//
// MARK: - Country
struct CountryTeam: Codable {
    let name: String
}

//enum GenderTeam: String, Codable {
//    case m = "M"
//}
//
//// MARK: - TeamColors
//struct TeamColors: Codable {
//    let primary, secondary, text: String
//}
