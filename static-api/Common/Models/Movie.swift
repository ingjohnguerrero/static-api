//
//  Movie.swift
//  static-api
//
//  Created by John Edwin Guerrero Ayala on 3/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

struct Movie {
    var title = ""
    var overview = ""
    var releaseDate = ""
    var backdropPath = ""
    var posterPath = ""
    var voteAverage = 0.0

    init() {

    }

    init(name: String, overview: String, releaseDate: String, voteAverage: Double, backdropPath: String, posterPath: String) {
        self.title = name
        self.overview = overview
        self.releaseDate = releaseDate
        self.voteAverage = voteAverage
        self.backdropPath = backdropPath
        self.posterPath = posterPath
    }
}
