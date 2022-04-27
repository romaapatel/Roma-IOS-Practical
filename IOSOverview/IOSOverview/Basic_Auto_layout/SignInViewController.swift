//
//  SignInViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 11/04/22.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    public static let identifier = "SignInViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        [emailTextField, passwordTextField].forEach { textField in
            textField?.delegate = self
        }
        scrollView.integrateWithKeyboard()
    }
    
    @IBAction func onClickSignUp(_ sender: UIButton) {
        if let signUpVc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController {
            self.navigationController?.pushViewController(signUpVc, animated: true)
        }
    }
}

extension SignInViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case emailTextField:
            emailTextField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            passwordTextField.resignFirstResponder()
        default:
            break
        }
        return true

    }
}
