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
    var release_date: String
    var backdropUrl: URL?
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        overview = dictionary["overview"] as? String ?? "No overview"
        release_date = dictionary["release_date"] as? String ?? "No release date"
        
        let baseUrlString = "https://image.tmdb.org/t/p/w500"
        let posterPath = dictionary["poster_path"] as? String ?? "No poster"
        let backdropString = dictionary["backdropPath"] as? String ?? "No backdrop"
        posterUrl = URL(string: baseUrlString + posterPath)
        backdropUrl = URL(string: baseUrlString + backdropString)
        
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
