//
//  WebServiceViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 30/05/22.
//

import UIKit

class WebServiceViewController: UIViewController {
    
    //MARK: - Variables
    var posts: Array<PostElement> = Array()
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts")else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                print(error.localizedDescription)
            } else {
                if let responseData = data {
                    if let allPosts = try? JSONDecoder().decode(Post.self, from: responseData) {
                        for post in allPosts {
                            self.posts.append(post)
                            DispatchQueue.main.async { [weak self] in
                                guard let uSelf = self else {return}
                                uSelf.tableView.reloadData()
                            }
                        }
                    }
                }
            }
        }.resume()
    }
}

//MARK: - UITableViewDataSource
extension WebServiceViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath) as? WebServiceTableViewCell else {
            return UITableViewCell()
        }
        cell.configureCellValue(post: posts[indexPath.row])
        return cell
    }
}

