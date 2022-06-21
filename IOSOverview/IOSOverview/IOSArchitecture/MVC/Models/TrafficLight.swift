//
//  TrafficLight.swift
//  IOSOverview
//
//  Created by Roma Patel on 21/06/22.
//

import Foundation

struct TrafficLight {
    let colorName : ColorName
    let description : String
}

enum ColorName : String {
    case red = "Red"
    case green = "Green"
    case yellow = "Yellow"
}
