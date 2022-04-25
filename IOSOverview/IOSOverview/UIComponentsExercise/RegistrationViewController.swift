//
//  RegistrationViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 25/04/22.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var ivProfileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        //ivProfileImage.makeViewCircular()
    }
    
    @IBAction func onClickOfBtnUploadProfile(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
               imagePicker.sourceType = .photoLibrary
               imagePicker.delegate = self
               imagePicker.allowsEditing = true
               present(imagePicker, animated: true)
    }
}

extension RegistrationViewController : UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        ivProfileImage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        picker.dismiss(animated: true, completion: nil)
    }
}

extension RegistrationViewController : UINavigationControllerDelegate { }
