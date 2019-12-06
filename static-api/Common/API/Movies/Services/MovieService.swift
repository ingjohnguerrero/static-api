//
//  MovieService.swift
//  static-api
//
//  Created by John Edwin Guerrero Ayala on 4/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

/**
 Type alias to handle single movie result
 
 - Parameters:
    - movie: Result movie if present
    - error: Error if present
 */
typealias MovieResult = (_ movie: Movie?, _ error: Error?) -> Void
/**
 Type alias to handle an array of movies in a result
 
 - Parameters:
    - movies: Result array of movies if present
    - error: Error if present
 */
typealias MoviesResult = (_ movies: [Movie], _ error: Error?) -> Void

/**
 Movie service protocol, declares the available methods that must be implemented inside the respective context
 */
protocol MovieService: class {

    /**
     Get movie details by id
     
     - Parameters:
        - movieId: Request movie details id
        - completion: MovieResult typealias
     */
    func getMovieDetailsById(_ movieId: Int, completion: @escaping MovieResult)
    /**
     Get top rated movies
     
     - Parameters:
        - completion: MovieResult typealias
     */
    func getTopRatedMovies(completion: @escaping MoviesResult)
}
