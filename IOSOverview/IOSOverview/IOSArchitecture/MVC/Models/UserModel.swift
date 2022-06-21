//
//  UserModel.swift
//  IOSOverview
//
//  Created by Roma Patel on 22/06/22.
//

import Foundation

// MARK: - Data
struct UserModel: Codable {
    
    let id: Int
    let email, firstName, lastName: String
    let avatar: String

    enum CodingKeys: String, CodingKey {
        case id, email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
    
}

// MARK: - Support
struct Support: Codable {
    let url: String
    let text: String
}
