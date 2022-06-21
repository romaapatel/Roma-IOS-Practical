//
//  UserTableViewCell.swift
//  IOSOverview
//
//  Created by Roma Patel on 22/06/22.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var fullNameLabel: UILabel!
    
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
