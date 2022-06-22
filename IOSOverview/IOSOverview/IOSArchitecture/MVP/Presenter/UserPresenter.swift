//
//  UserPresenter.swift
//  IOSOverview
//
//  Created by Roma Patel on 22/06/22.
//

import Foundation
import Alamofire
import UIKit

protocol UserPresenterDelegate {
    func presentUsers()
      var delegate: IView? { get set }
}

class UserPresenter : UserPresenterDelegate{
    
    var delegate: IView?
    
    func presentUsers() {
           if let url = URL(string: "https://reqres.in/api/users?page=2") {
               let urlRequest = URLRequest(url: url)
               let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, urlResponse, error) in

                   if let error = error {
                       print("Error:\(error.localizedDescription)")
                   }

                   guard let responseData = data else { return }
                   guard urlResponse != nil else { return }

                   do {
                       let json = try JSONDecoder().decode(UserResponse.self, from: responseData)
                       self.delegate?.onSuccess(users: json.data)
                   } catch let error {
                       print("JSON Parsing Error: \(error) ")
                   }
               }
               dataTask.resume()
           }
       }
}
