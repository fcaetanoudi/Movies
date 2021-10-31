//
//  Movies.swift
//  MyMovie
//
//  Created by Fagner Silva on 31/10/21.
//

import UIKit

class Movies {
    
    var title: String!
    var yearRelease: String!
    var movieImage: UIImage!
    
    init(title: String, yearRelease: String, movieImage: UIImage) {
        self.title = title
        self.yearRelease = yearRelease
        self.movieImage = movieImage
    }
    
}
