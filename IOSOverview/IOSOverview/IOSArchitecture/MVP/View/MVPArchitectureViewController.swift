//
//  MVPArchitectureViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 22/06/22.
//

import UIKit

protocol IView {
    
    func onSuccess(users: [UserModel])
    func onFailure(message: String)
    
}

class MVPArchitectureViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - User Defined Variables
//    var userArray = [UserModel]()
    let presenter = UserPresenter()
    var userArray = [UserModel]()

    //MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        presenter.delegate = self
        presenter.presentUsers()
        self.tableView.register(
            UINib(nibName: "TableViewCell", bundle: nil),
            forCellReuseIdentifier: "userCell"
        )
      
    }
}

//MARK: - Extension ->  UITableViewDelegate, UITableViewDataSource (Setting Up TableView)
extension MVPArchitectureViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as? TableViewCell else { return UITableViewCell()}
        cell.configureCell(user: userArray[indexPath.row])
        return cell
    }
}

extension MVPArchitectureViewController: IView {
    
    func onSuccess(users: [UserModel]) {
        self.userArray = users
        print(users)
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func onFailure(message: String) {
        print("On Failure")
    }
    
}
