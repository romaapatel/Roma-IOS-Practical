//
//  AdvancedAutoLayoutViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 25/04/22.
//

import UIKit

class AdvancedAutoLayoutViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func OnClickOfBtnSizeClass(_ sender: UIButton) {
        if let btnSizeClass = self.storyboard?.instantiateViewController(withIdentifier: "SizeClassViewController") as? SizeClassViewController {
            self.navigationController?.pushViewController(btnSizeClass, animated: true)
        }
    }
}
