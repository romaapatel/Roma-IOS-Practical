//
//  ExerciseHelperClass.swift
//  IOSOverview
//
//  Created by Roma Patel on 25/04/22.
//

import Foundation
import UIKit

func setImageFromUrl(image: UIImageView, url: String) {
    guard let urlObj = URL(string: url) else {
        return
    }
    guard let data = try? Data(contentsOf: urlObj) else {
        return
    }
    image.image = UIImage(data: data)
}



extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func makeAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

extension UIImageView {
    
    func makeViewCircular() {
        self.layer.borderWidth = 1
        self.layer.masksToBounds = false
        self.layer.borderColor = self.backgroundColor?.cgColor
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
        self.contentMode = .scaleToFill
    }
}
