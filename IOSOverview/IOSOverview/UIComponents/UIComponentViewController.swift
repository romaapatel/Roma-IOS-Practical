//
//  UIComponentViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 15/04/22.
//

import UIKit
import CoreLocation

class UIComponentViewController: UIViewController {
    
    @IBOutlet weak var currentView: UIView!
    @IBOutlet weak var btnStopSpinner: UIButton!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var tvCountryPicker: UITextField!
    @IBOutlet weak var ivSelectedImage: UIImageView!
    @IBOutlet weak var lblSliderValue: UILabel!
    @IBOutlet weak var tvBirthdatePicker: UITextField!
    var datePicker = UIDatePicker()
    let toolbar = UIToolbar()
    var pickerView = UIPickerView()
    let searchController = UISearchController()
    let locationManager = CLLocationManager()
    var cordinates: CLLocationCoordinate2D!

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        tvCountryPicker.inputView = pickerView
        searchController.searchResultsUpdater = self
        getDatePicker()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
       
        locationManager.startUpdatingLocation()
    }
    
    @IBAction func onClickOfTintedButton(_ sender: UIButton) {
        makeAlert(title: "Tinted Button", message: "Tinted button was clicked.")
    }
    
    @IBAction func onClickOfSimpleButton(_ sender: UIButton) {
        makeAlert(title: "Simple Button", message: "Simple button was clicked")
    }
    
    @IBAction func onClickOfGrayButton(_ sender: UIButton) {
        makeAlert(title: "Gray Button", message: "Gray Button was Clicked")
    }
    
    @IBAction func onClickOfSwitchButton(_ sender: UISwitch) {
        if sender.isOn {
            currentView.backgroundColor = .black
        } else {
            currentView.backgroundColor = .white
        }
    }
    
    @IBAction func onSliderValueChanges(_ sender: UISlider) {
        let value = sender.value
        lblSliderValue.text = "\(value)"
    }
    
    @IBAction func onClickOfBtnNext(_ sender: UIButton) {
        if let btnNextPage = self.storyboard?.instantiateViewController(withIdentifier: "ProgressBarViewController") as? ProgressBarViewController {
                  self.navigationController?.pushViewController(btnNextPage, animated: true)
            }
    }
    
    @IBAction func onClickOfBtnSelectImage(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true)
    }
    
    @IBAction func onClickOfBtnStopSpinner(_ sender: UIButton) {
        if spinner.isAnimating == true {
            spinner.stopAnimating()
            btnStopSpinner.setTitle("Start Spinner", for: .normal)
        } else if spinner.isAnimating == false {
            spinner.startAnimating()
            btnStopSpinner.setTitle("Stop Spinner", for: UIControl.State.normal)
        }
    }
    
    @IBAction func onClickgetLoction(_ sender: Any) {
        makeAlert(title: "Current Location", message: "Lattitude : \(cordinates.latitude) \nLongitude : \(cordinates.longitude)")
    }
    
    @IBAction func onClickBtnWithUrl(_ sender: UIButton) {
        if let btnWebView = self.storyboard?.instantiateViewController(withIdentifier: "WKWebViewViewController") as? WKWebViewViewController {
                  self.navigationController?.pushViewController(btnWebView, animated: true)
            }
    }
    
    @IBAction func onClickBtnPageController(_ sender: UIButton) {
        if let btnPageController = self.storyboard?.instantiateViewController(withIdentifier: "PageViewController") as? PageViewController {
                  self.navigationController?.pushViewController(btnPageController, animated: true)
            }
    }
    
    @IBAction func onClickBtnTabBar(_ sender: UIButton) {
        if let btnTabBar = self.storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as? TabBarViewController {
                  self.navigationController?.pushViewController(btnTabBar, animated: true)
            }
    }
    
    func getDatePicker() {
        toolbar.sizeToFit()
        let btnDone = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([btnDone], animated: true)
        tvBirthdatePicker.inputAccessoryView = toolbar
        tvBirthdatePicker.inputView = datePicker
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
    }
    
    @objc func donePressed() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        tvBirthdatePicker.text = formatter.string(from: datePicker.date)
        self.view
            .endEditing(true)
    }
}

extension UIComponentViewController : UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        ivSelectedImage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        picker.dismiss(animated: true, completion: nil)
    }
}

extension UIComponentViewController : UINavigationControllerDelegate { }

extension UIComponentViewController : UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tvCountryPicker.text = countriesArray[row]
        tvCountryPicker.resignFirstResponder()
    }
}

extension UIComponentViewController : UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countriesArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countriesArray[row]
    }
}

extension UIComponentViewController : UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard searchController.searchBar.text == nil else {
            return
        }
    }
}

extension UIComponentViewController : CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        cordinates = manager.location?.coordinate
    }
}
