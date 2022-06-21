//
//  Helper.swift
//  IOSOverview
//
//  Created by Roma Patel on 22/06/22.
//

import Foundation
import UIKit

func setImageFromUrl(image: UIImageView, url: String) {
    guard let urlObj = URL(string: url) else { return }
    guard let data = try? Data(contentsOf: urlObj) else { return }
    image.image = UIImage(data: data)
}
