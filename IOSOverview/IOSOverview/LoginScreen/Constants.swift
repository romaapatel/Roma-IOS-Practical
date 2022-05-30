//
//  Constants.swift
//  IOSOverview
//
//  Created by Roma Patel on 31/05/22.
//

import UIKit
import Lottie

class Constants {
    
    class Numbers {
        static let ZERO = 0
        static let ONE = 1
        static let TWO = 2
        static let ONE_H = 100
    }
    
    static let animationView: AnimationView = .init(name: "Loading")
}

extension UIViewController {
    
    func makeAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension UIScrollView {
    
    func integrateWithKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardAppear), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDisappear), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardAppear(_ notification:NSNotification) {
        guard let userInfo = notification.userInfo else { return }
        guard let keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue else { return }
        var contentInset: UIEdgeInsets = self.contentInset
        contentInset.bottom = keyboardFrame.size.height + CGFloat(Constants.Numbers.ONE_H)
        self.contentInset = contentInset
    }
    
    @objc func keyboardDisappear(notification:NSNotification) {
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        self.contentInset = contentInset
    }
}

