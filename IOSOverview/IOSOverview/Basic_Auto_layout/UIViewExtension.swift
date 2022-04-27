//
//  UIViewExtension.swift
//  IOSOverview
//
//  Created by Roma Patel on 02/05/22.
//

import UIKit

extension UIView {
    var parentViewController: UIViewController? {
          var parentResponder: UIResponder? = self.next
          while parentResponder != nil {
              if let viewController = parentResponder as? UIViewController {
                  return viewController
              }
              parentResponder = parentResponder?.next
          }
          return nil
      }
}
