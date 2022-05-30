//
//  Post.swift
//  IOSOverview
//
//  Created by Roma Patel on 30/05/22.
//

import Foundation

struct PostElement: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}
typealias Post = [PostElement]
