//
//  AutoLayoutViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 25/04/22.
//

import UIKit

class AutoLayoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onClickOfBtnAutoLayout(_ sender: UIButton) {
        if let btnNextPage = self.storyboard?.instantiateViewController(withIdentifier: "ExerciseViewController") as?
        ExerciseViewController {
            self.navigationController?.pushViewController(btnNextPage, animated: true)
    }
    }
}
