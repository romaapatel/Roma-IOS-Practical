//
//  ViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 04/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var receivedDataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getDataSegue" {
            guard let secondVC: SecondViewController = segue.destination as? SecondViewController else {
                return
            }
            secondVC.delegate = self
        }
    }
}

extension ViewController : MyDataSendingDelegateProtocol {
    func sendDataToFirstViewController(myData: String) {
        self.receivedDataLabel.text = myData
    }
}
