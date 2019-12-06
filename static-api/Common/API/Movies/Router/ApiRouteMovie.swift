//
//  ApiRouteMovie.swift
//  static-api
//
//  Created by John Edwin Guerrero Ayala on 4/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

enum ApiRouteMovie: ApiRoute {

    /// Get movie details by id
    case movieById(_ movieId: Int)
    /// Get top rated movies
    case topRated
    /// Get upComing movies
    case upComing
    /// Get popular movies
    case popular
    /// Get online search url
    case onlineSearch

    /// Returns the combined route for the requested option.
    var path: String {
        switch self {
        case .movieById(let movieId): return "movie/\(movieId)"
        case .topRated: return "movie/top_rated"
        case .upComing: return "movie/upcoming"
        case .popular: return "movie/popular"
        case .onlineSearch: return "search/movie"
        }
    }
}
