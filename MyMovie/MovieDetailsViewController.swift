//
//  MovieDetailsViewController.swift
//  MyMovie
//
//  Created by Fagner Silva on 31/10/21.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var yearRelease: UILabel!
    
    var movie: Movies!

    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .dark
        
        movieImage.image = movie.movieImage
        movieName.text = movie.title
        yearRelease.text = movie.yearRelease
        
    }


}
