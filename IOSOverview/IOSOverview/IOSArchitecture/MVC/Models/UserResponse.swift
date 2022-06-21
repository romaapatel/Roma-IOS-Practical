//
//  UserResponse.swift
//  IOSOverview
//
//  Created by Roma Patel on 22/06/22.
//

import Foundation

// MARK: - List users Main dataclass
struct UserResponse: Codable {
    
    let page, perPage, total, totalPages: Int
    let data: [UserModel]
    let support: Support

    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case data, support
    }
}
