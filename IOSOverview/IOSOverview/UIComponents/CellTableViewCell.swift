//
//  CellTableViewCell.swift
//  IOSOverview
//
//  Created by Roma Patel on 20/04/22.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    @IBOutlet weak var lblDetail: UILabel!
    @IBOutlet weak var imgImage: UIImageView!
    
    override func awakeFromNib() {
//        The nib-loading infrastructure sends an awakeFromNib message to each object recreated from a nib archive, but only after all the objects in the archive have been loaded and initialized
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
