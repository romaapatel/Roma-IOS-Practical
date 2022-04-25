//
//  Helper.swift
//  IOSOverview
//
//  Created by Roma Patel on 20/04/22.
//

import Foundation
import UIKit


var movieImageArray = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2UfnFJ58zJynKWQ1QCvQYt-R-1IxHe5zRyw&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmdIYA6BzP93WSn0BHk76BMM0YKtbia55sbg&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzn8a8usFvqR5x6oHk2OGXuJ5TE2JxhPim9g&usqp=CAU",
 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNXbSllqNjkh8vSN1tmY0Q8c-t88mOalT_Sg&usqp=CAU",
 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEiIeHryMcn1alNZqCZ338Jzv9_ymvyWD7Og&usqp=CAU",
 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH3QKx2QgpeIL35_KOFQoS_RooxOvcGZW4Mw&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCwtjRhoBQwBAa141ImkWNXbtoUpKGhCuEEg&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2XjsL0gwA8yXB23GrU5sqf4UBuWE0mNCULw&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUk2H2xGcEPnky21pObQ5RMp5u5i_noOpoPg&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu2cbjCuMFBDMua-nq_YnZRLzfKaXG2DuTZg&usqp=CAU"]
var movieNameArray = ["Radhe", "HighWay", "Sholay", "Queen", "Jersey", "HighWay", "Pushpa", "Pushpa", "Pushpa", "Pushpa"]

var namesArray = ["Roma", "Nishant", "Shubham", "Brijesh", "Katha", "Prarthana", "Krupa", "Drashti"]
var imagesArray = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPP0mJRskXLKorMTnNy2zgmxF58S68s-Q-8A&usqp=CAU","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGjJbISteHeRBJQ5evX_yFD-t8vkB8K2HmfQ&usqp=CAU","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-3f05hR6B62M3GUZcjhwhg1rFe6isAd-Ctw&usqp=CAU","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKx-RXaxynfzhyrbV6HZhH9hwSiTUuBXDW9A&usqp=CAU","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzCKlmE1vTW_fmoATY25ALinyHg5PPsS3F1Q&usqp=CAU","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwwBlU3J8OnFtvtBxkJSomhk-RHGZhe-1YEQ&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy3F4QW4xkk7uWHEgqWzXHezB8RaV-JcSotA&usqp=CAU","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKijNZOy8oM4sOI1XbBrdkSRPT2RjYSisryw&usqp=CAU","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKijNZOy8oM4sOI1XbBrdkSRPT2RjYSisryw&usqp=CAU"]

var natureImage = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9nhK7ifppr84vDZ2PfojYe38tORBUWZCDZA&usqp=CAU"
let countriesArray = ["India", "USA", "Canada", "UK", "Germany", "Italy", "Spain", "Japan", "China", "Bhutan"]

 func setImageFromUrl(image: UIImageView, url: String) {
     guard let urlObj = URL(string: url) else { return }
     guard let data = try? Data(contentsOf: urlObj) else { return }
     image.image = UIImage(data: data)
 }

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func makeAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}


