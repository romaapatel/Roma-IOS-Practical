//
//  CustomTextSizes.swift
//  IOSOverview
//
//  Created by Roma Patel on 28/04/22.
//

import Foundation
import UIKit


class CustomLabel : UILabel {
    
    @IBInspectable public var textFont :  Int = 0 {
        didSet {
            switch (textFont) {
            case 0:
                setSize(size: 10.0, weight: .regular)
            case 1:
                setSize(size: 12.0 ,weight: .regular)
            case 2:
                setSize(size: 14.0, weight: .regular)
            case 3:
                setSize(size: 16.0, weight: .regular)
            case 4:
                setSize(size: 18.0, weight: .regular)
            case 5:
                setSize(size: 10.0, weight: .medium)
            case 6:
                setSize(size: 12.0 ,weight: .medium)
            case 7:
                setSize(size: 14.0, weight: .medium)
            case 8:
                setSize(size: 16.0, weight: .medium)
            case 9:
                setSize(size: 18.0, weight: .medium)
            case 10:
                setSize(size: 10.0, weight: .semibold)
            case 11:
                setSize(size: 12.0 ,weight: .semibold)
            case 12:
                setSize(size: 14.0, weight: .semibold)
            case 13:
                setSize(size: 16.0, weight: .semibold)
            case 14:
                setSize(size: 50.0, weight: .semibold)
            default:
                break
            }
        }
    }
    func setSize(size: CGFloat,weight : UIFont.Weight) {
        self.font = UIFont.systemFont(ofSize: size, weight: weight)
    }
    
}
