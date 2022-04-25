//
//  MovieCollectionViewCell.swift
//  IOSOverview
//
//  Created by Roma Patel on 21/04/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgMovieImage: UIImageView!
    @IBOutlet weak var lblMovieName: UILabel!
    
    func getMovieDetails(movieName: [String], movieImage: [String]) {
        lblMovieName.text = movieName[0]
        imgMovieImage.image = UIImage(named: movieImage[0])
    }
}
