//
//  ProgressBarViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 19/04/22.
//

import UIKit

class ProgressBarViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var currentView: UIView!
    @IBOutlet weak var lblStepperValue: UILabel!
    @IBOutlet weak var imgNatureImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImageFromUrl(image: imgNatureImage, url: natureImage)
    }
    
    @IBAction func onClickOfBtnTimer(_ sender: UIButton) {
        self.progressBar.progress = 0
        Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { timer in
            self.progressBar.progress += 0.001
            if self.progressBar.progress == 1.0 {
                return
            }
        })
    }
    
    @IBAction func onChangeOfSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            currentView.backgroundColor = .white
        } else if sender.selectedSegmentIndex == 1 {
            currentView.backgroundColor = .lightGray
        } else if sender.selectedSegmentIndex == 2 {
            currentView.backgroundColor = .systemCyan
        }
    }
    
    @IBAction func onClickOfStepper(_ sender: UIStepper) {
        lblStepperValue.text = Int(sender.value).description
    }
    
    @IBAction func onClickOfbtnNextPage(_ sender: UIButton) {
        if let btnNextPage = self.storyboard?.instantiateViewController(withIdentifier: "TableViewController") as? TableViewController {
            self.navigationController?.pushViewController(btnNextPage, animated: true)
        }
    }
    
}
