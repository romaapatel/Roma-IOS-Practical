//
//  SecondViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 15/03/22.
//
import UIKit
protocol MyDataSendingDelegateProtocol {
   func sendDataToFirstViewController(myData: String)
}

class SecondViewController: UIViewController {
    
    var delegate: MyDataSendingDelegateProtocol? = nil
    
    @IBOutlet weak var dataToSendTextField: UITextField!
    
    override func viewDidLoad() {
           super.viewDidLoad()
       }
    
    @IBAction func sendDataButtonClicked(_ sender: UIButton) {
        if self.delegate == nil && self.dataToSendTextField.text != nil {
            guard let dataToBeSent = self.dataToSendTextField.text else {
                return print("Nothing")
            }
            self.delegate?.sendDataToFirstViewController(myData: dataToBeSent)
            delegate = self
            dismiss(animated: true, completion: nil)
           }
       }
}

extension SecondViewController : MyDataSendingDelegateProtocol {
    func sendDataToFirstViewController(myData: String) {
          self.dataToSendTextField.text = myData
    }
}
