//
//  MVCApiGetRequestViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 22/06/22.
//

import UIKit
import Alamofire

class MVCApiGetRequestViewController: UIViewController {
    
    //MARK: - Variables
    @IBOutlet weak var tableView: UITableView!
    var userArray = [UserModel]()
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        getUserInfowithAlamofire()
    }

    func getUserInfowithAlamofire() {
            let data = APIServices()
            let endPoint = APIServices.UrlEncoding.evaluate(urls: .listUsers)
            guard let url = URL(string: "\(data.baseUrl + endPoint)") else { return }
            APIServices.shared.request(typeT: UserResponse.self , apiUrl: .listUsers, param: nil, url: url) { [weak self] response, code in
                guard let responseData = response else { return }
                self?.userArray = responseData.data
                self?.tableView.reloadData()
            } error: { }
        }
}

extension MVCApiGetRequestViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath) as? UserTableViewCell else {
            return UITableViewCell()
        }
        cell.configureCell(user: userArray[indexPath.row])
        return cell
    }
}
