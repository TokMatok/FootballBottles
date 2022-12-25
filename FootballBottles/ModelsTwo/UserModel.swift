//
//  UserModel.swift
//  Total control Football
//
//  Created by Ramazan Abdulaev on 27.10.2022.
//

import Foundation

struct User: Codable {
    let login: String
    let password: String
    let age: Date
    let controlWord: String
    let email: String
}
