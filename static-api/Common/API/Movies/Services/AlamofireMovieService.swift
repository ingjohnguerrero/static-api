//
//  AlamofireMovieService.swift
//  static-api
//
//  Created by John Edwin Guerrero Ayala on 4/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation
import Alamofire

class AlamofireMovieService: AlamofireService, MovieService {

    func getMovieDetailsById(_ movieId: Int, completion: @escaping MovieResult) {
        get(at: ApiRouteMovie.movieById(movieId)).responseDecodable { (response: DataResponse<ApiMovie>) in
            
        }
        //AF.request(ApiRouteMovie.movieById(movieId), method: .get).validate()
    }

    func getTopRatedMovies(completion: @escaping MoviesResult) {

    }

}
