//
//  SizeClassViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 25/04/22.
//

import UIKit

class SizeClassViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onClickOfBtnSubmit(_ sender: UIButton) {
        if let btnSubmit = self.storyboard?.instantiateViewController(withIdentifier: "AutoLayoutViewController") as? AutoLayoutViewController {
            self.navigationController?.pushViewController(btnSubmit, animated: true)
        }
    }
}
