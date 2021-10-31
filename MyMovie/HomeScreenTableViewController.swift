//
//  HomeScreenTableViewController.swift
//  MyMovie
//
//  Created by Fagner Silva on 31/10/21.
//

import UIKit

class HomeScreenTableViewController: UITableViewController {
    
    var movies: [Movies] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .dark
        
        var movie: Movies
        movie = Movies(title: "Iron Man 2", yearRelease: "28 Out 2010", movieImage: UIImage(named: "Iron_Man_2_Official_Poster")!)
        movies.append(movie)
        
        movie = Movies(title: "The Avengers", yearRelease: "25 Abr 2012", movieImage: UIImage(named: "Theavengersnewposter")!)
        movies.append(movie)

        movie = Movies(title: "Captain America: The Winter Soldier", yearRelease: "04 Abr 2014", movieImage: UIImage(named: "Captain_America_The_Winter_Soldier_main_poster")!)
        movies.append(movie)

        movie = Movies(title: "Avengers: Age of Ultron", yearRelease: "22 Abr 2015", movieImage: UIImage(named: "Avengers_Age_Of_Ultron-poster1")!)
        movies.append(movie)

        movie = Movies(title: "Captain America: Civil War", yearRelease: "27 Abr 2017", movieImage: UIImage(named: "Civil_War_Final_Poster")!)
        movies.append(movie)

        movie = Movies(title: "Avengers: Infinity War", yearRelease: "27 Abr 2017", movieImage: UIImage(named: "Avengers_Infinity_war_poster")!)
        movies.append(movie)

        movie = Movies(title: "Captain Marvel", yearRelease: "08 Mar 2018", movieImage: UIImage(named: "CaptainMarvelPoster")!)
        movies.append(movie)

        movie = Movies(title: "Avengers: Endgame", yearRelease: "26 Abr 2019", movieImage: UIImage(named: "Endgame_Poster_2")!)
        movies.append(movie)

        movie = Movies(title: "Black Widow", yearRelease: "09 Jul 2021", movieImage: UIImage(named: "Black_Widow_July_9_Poster")!)
        movies.append(movie)        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movies: Movies = movies[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MoviesTableViewCell
        cell.movieImage.image = movies.movieImage
        cell.movieName.text = movies.title
        cell.dateLabel.text = movies.yearRelease
        
        cell.movieImage.layer.cornerRadius = 50
        cell.movieImage.clipsToBounds = true
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sender" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let movieSelected = self.movies[indexPath.row]
                let destination = segue.destination as! MovieDetailsViewController
                destination.movie = movieSelected
            }
        }
    }
}
