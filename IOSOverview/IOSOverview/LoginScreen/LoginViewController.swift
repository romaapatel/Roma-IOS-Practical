//
//  LoginViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 31/05/22.
//

import UIKit
import Lottie
import Rswift
class LoginViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    //MARK: - UIviewController
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        [emailTextField, textFieldPassword].forEach { textField in textField?.delegate = self }
        scrollView.integrateWithKeyboard()
    }
    
    //MARK: - Actions
    @IBAction func onClickSignIn(_ sender: UIButton) {
        guard let email = emailTextField.text else { return }
        guard let password = textFieldPassword.text else { return }
        let isValidEmail = emailTextField.validateField(validationType: .email, vc: self)
        let isValidPassword = textFieldPassword.validateField(validationType: .password, vc: self)
        if (isValidEmail && isValidPassword) {
            loadGIF(operation: .start)
            let user = User(email: email, password: password)
            AlamofireClient.sendPostRequest(requestType: .post, apiType: .signIn, body: user, apiResponse: self)
        }
    }
    
    //MARK: - Giffuntion
    func loadGIF(operation: LoadingOperation) {
        let animationView = Constants.animationView
        switch operation {
        case .start:
            animationView.frame = view.bounds
            animationView.loopMode = .loop
            animationView.play()
            view.addSubview(animationView)
        case .end:
            animationView.stop()
            animationView.removeFromSuperview()
        }
    }
}

//MARK: - Delegate
extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case emailTextField:
            emailTextField.resignFirstResponder()
            textFieldPassword.becomeFirstResponder()
        case textFieldPassword:
            textFieldPassword.resignFirstResponder()
        default:
            break
        }
        return true
    }
}

extension LoginViewController: APIResponse {
    
    func onApiFailure(error: Error) {
        makeAlert(title: R.string.localizable.error(), message: error.error)
        loadGIF(operation: .end)
    }
    
    func onApiSucess(response: Response) {
        loadGIF(operation: .end)
        makeAlert(title: R.string.localizable.success(), message: response.token)
    }
    
    func onFailure(message: String) {
        makeAlert(title:  R.string.localizable.error(), message: message)
    }
}

class passwordTextField : UITextField {
    let imageIcon = UIButton()
    func setup() {
        imageIcon.addTarget(self, action: #selector(self.passwordToggle), for: .touchUpInside)
        let contentView = UIView()
        contentView.addSubview(imageIcon)
        contentView.frame = CGRect(x: 0, y: 0, width: 30, height: 20)
        imageIcon.frame = CGRect(x: -15, y: 0, width: 30, height: 20)
        self.rightView = contentView
        self.rightViewMode = .always
        self.isSecureTextEntry = true
        imageIcon.backgroundColor = UIColor.clear
        imageIcon.isSelected = true
        imageIcon.setImage(R.image.passwordHidden(), for: .normal)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    @objc func passwordToggle(_ sender: UIButton) {
        if (sender.isSelected) {
            sender.isSelected = !sender.isSelected
            imageIcon.setImage(R.image.passwordShow(), for: .normal)
            self.isSecureTextEntry = false
            imageIcon.imageView?.image?.withRenderingMode(.alwaysTemplate)
        } else {
            sender.isSelected = !sender.isSelected
            imageIcon.setImage(R.image.passwordHidden(), for: .normal)
            self.isSecureTextEntry = true
            imageIcon.imageView?.image?.withRenderingMode(.alwaysTemplate)
        }
    }
}

//MARK: UITextFieldExtension
extension UITextField {
    
    func validateField(validationType: ValidationTypes, vc: UIViewController) -> Bool {
        switch(validationType) {
            case .email: return validateEmail(vc: vc)
            case .password: return validatePassword(vc: vc)
        }
    }

    private func validateEmail(vc: UIViewController) -> Bool {
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", R.string.localizable.emailFormat())
        if (emailPredicate.evaluate(with: self.text ?? "")) {
            self.layer.borderWidth = CGFloat(Constants.Numbers.ZERO)
            self.layer.borderColor = nil
            return true
        } else if(self.text ?? "" == "") {
            self.layer.borderColor = UIColor.red.cgColor
            self.layer.borderWidth = CGFloat(Constants.Numbers.ONE)
            vc.makeAlert(title: R.string.localizable.error(), message: R.string.localizable.emptyemail())
            return false
        } else if (!emailPredicate.evaluate(with: self.text ?? "")) {
            self.layer.borderColor = UIColor.red.cgColor
            self.layer.borderWidth = CGFloat(Constants.Numbers.ONE)
            vc.makeAlert(title: R.string.localizable.error(), message: R.string.localizable.validEmail())
            return false
        } else {
            self.layer.borderColor = UIColor.red.cgColor
            self.layer.borderWidth = CGFloat(Constants.Numbers.ONE)
            vc.makeAlert(title: R.string.localizable.error(), message: R.string.localizable.emptyemail())
            return false
        }
    }

    private func validatePassword(vc: UIViewController) -> Bool {
        if (self.text?.count ?? -1 > 5) {
            self.layer.borderWidth = CGFloat(Constants.Numbers.ZERO)
            self.layer.borderColor = nil
            return true
        } else {
            self.layer.borderColor = UIColor.red.cgColor
            self.layer.borderWidth = CGFloat(Constants.Numbers.ONE)
            vc.makeAlert(title: R.string.localizable.error(), message: R.string.localizable.passwordLength())
            return false
        }
    }

    private func validateRequired() -> Bool {
        if(!(self.text?.isEmpty ?? true)) {
            self.layer.borderWidth = CGFloat(Constants.Numbers.ZERO)
            self.layer.borderColor = nil
            return true
        } else {
            self.layer.borderColor = UIColor.red.cgColor
            self.layer.borderWidth = CGFloat(Constants.Numbers.ONE)
            self.window?.rootViewController?.makeAlert(title: R.string.localizable.error(), message: R.string.localizable.emptyemail())
            return false
        }
    }
}

enum ValidationTypes {
    case email;
    case password
}
