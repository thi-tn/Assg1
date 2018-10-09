//
//  Movie.swift
//  Assg1
//
//  Created by user144652 on 10/8/18.
//  Copyright © 2018 Norah. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var posterUrl: URL?
    var overview: String
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        
        // Set the rest of the properties
        let baseUrlString = "https://image.tmdb.org/t/p/w500"
        let posterPath = dictionary["poster_path"] as! String
        posterUrl = URL(string: baseUrlString + posterPath)
        overview = dictionary["overview"] as? String ?? "No overview"
    }
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }
}
