//
//  Movie.swift
//  static-api
//
//  Created by John Edwin Guerrero Ayala on 3/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

struct Movie: Codable {
    var id = 0
    var title = ""
    var overview = ""
    var releaseDate = ""
    var backdropPath = ""
    var posterPath = ""
    var voteAverage = 0.0

    init() {

    }

    init(id: Int, name: String, overview: String, releaseDate: String, voteAverage: Double, backdropPath: String, posterPath: String) {
        self.id = id
        self.title = name
        self.overview = overview
        self.releaseDate = releaseDate
        self.voteAverage = voteAverage
        self.backdropPath = backdropPath
        self.posterPath = posterPath
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case releaseDate = "release_date"
        case overview
        case backdropPath = "backdrop_path"
        case posterPath = "poster_path"
        case voteAverage = "vote_average"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(Int.self, forKey: .id)
        title = try values.decode(String.self, forKey: .title)
        overview = try values.decode(String.self, forKey: .overview)
        releaseDate = try values.decode(String.self, forKey: .releaseDate)
        voteAverage = try values.decode(Double.self, forKey: .voteAverage)
        backdropPath = try values.decode(String.self, forKey: .backdropPath)
        posterPath = try values.decode(String.self, forKey: .posterPath)
    }
}
