//
//  SignUpViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 11/04/22.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        [emailTextField, passwordTextField, nameTextField].forEach { textField in
            textField?.delegate = self
        }
        scrollView.integrateWithKeyboard()
    }
    
    deinit {
        print("Deinit Called")
    }
    
    @IBAction func onClickBtnBack(_ sender: UIButton) {
        if let storyboard =  self.storyboard?.instantiateViewController(withIdentifier: SignInViewController.identifier) as? SignInViewController {
            self.navigationController?.popToRootViewController(animated: true)
        }
    }
}

extension SignUpViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case emailTextField:
            emailTextField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        case nameTextField:
            nameTextField.resignFirstResponder()
            emailTextField.becomeFirstResponder()
        case passwordTextField:
            passwordTextField.resignFirstResponder()
        default:
            break
        }
        return true
    }
}
