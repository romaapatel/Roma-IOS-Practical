//
//  MVCArchitectureViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 21/06/22.
//

import UIKit

class MVCArchitectureViewController: UIViewController {
    
    //MARK: Variable
    @IBOutlet weak var selectedLightColor: CircleLabel!
    @IBOutlet weak var selectedLightDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: Actions
    
    @IBAction func onClickRedButton(_ sender: UIButton) {
        self.trafficLightSelectedColor(colorName: .red)
    }
    
    @IBAction func onClickGreenButton(_ sender: UIButton) {
        self.trafficLightSelectedColor(colorName: .green)
    }
    
    @IBAction func onClickYellowButton(_ sender: UIButton) {
        self.trafficLightSelectedColor(colorName: .yellow)
    }
    
    //MARK: TrafficLight
    func getTrafficLight(colorName : ColorName, callBack:(TrafficLight?) -> Void) {
        let trafficLights = [TrafficLight(colorName: .red, description: "Stop"), TrafficLight(colorName: .green, description: "Go"), TrafficLight(colorName: .yellow, description: "about to go")]
        
        if let foundedTrafficLight = trafficLights.first(where: {$0.colorName == colorName}) {
            callBack(foundedTrafficLight)
        }
        else {
            callBack(nil)
        }
    }
    
    func trafficLightSelectedColor(colorName: ColorName) {
        self.getTrafficLight(colorName: colorName) { [weak self] (trafficLight) in
            if let trafficLight = trafficLight {
                self?.selectedLightDescriptionLabel.text = trafficLight.description
                self?.selectedLightColor.backgroundColor = self?.setColor(colorName: trafficLight.colorName)
            }
        }
    }
    
    func setColor(colorName : ColorName) -> UIColor {
        switch colorName {
        case .red:
            return UIColor.red
        case .green:
            return UIColor.green
        case .yellow:
            return UIColor.yellow
        }
    }
}
