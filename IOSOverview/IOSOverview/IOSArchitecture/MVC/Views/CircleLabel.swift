//
//  CircleLabel.swift
//  IOSOverview
//
//  Created by Roma Patel on 21/06/22.
//

import UIKit

class CircleLabel: UILabel {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = self.bounds.width/2
        self.clipsToBounds = true
        super.draw(rect)
    }
}
