//
//  WebServiceTableViewCell.swift
//  IOSOverview
//
//  Created by Roma Patel on 30/05/22.
//

import UIKit
import Alamofire

class WebServiceTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var userId: UILabel!
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var id: UILabel!
    
    //MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: - Setup
    func configureCellValue(post: PostElement) {
        self.userId.text = String(post.userID)
        self.id.text = String(post.id)
        self.title.text = post.title
        self.body.text = post.body
    }
}
