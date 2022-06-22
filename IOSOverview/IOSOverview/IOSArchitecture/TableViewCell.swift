//
//  TableViewCell.swift
//  IOSOverview
//
//  Created by Roma Patel on 23/06/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    //MARK: -Variables
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(user: UserModel) {
        setImageFromUrl(image: userImage, url: user.avatar)
        fullNameLabel.text = "\(user.firstName) \(user.lastName)"
        emailLabel.text = user.email
    }
}
