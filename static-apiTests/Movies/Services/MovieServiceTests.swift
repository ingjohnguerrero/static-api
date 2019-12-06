//
//  MovieServiceTests.swift
//  static-apiTests
//
//  Created by John Edwin Guerrero Ayala on 4/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import XCTest
import Fakery
@testable import static_api

class MovieServiceTests: XCTestCase {
    
    var sut = MockMovieService()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_getting_movie_by_id() {
        var movie: Movie?
        let getMovieExpectation = expectation(description: "Waiting for movie details")
        sut.getMovieDetailsById(10) { (responseMovie, error) in
            movie = responseMovie
            getMovieExpectation.fulfill()
        }
        waitForExpectations(timeout: 10) { (error) in
            XCTAssertNotNil(movie)
        }
    }
    
    func test_getting_movie_by_id_with_error() {
        var movie: Movie?
        let getMovieExpectation = expectation(description: "Waiting for movie details")
        sut.getMovieDetailsById(0) { (responseMovie, error) in
            movie = responseMovie
            getMovieExpectation.fulfill()
        }
        waitForExpectations(timeout: 10) { (error) in
            XCTAssertNil(movie)
        }
    }
    
    func test_getting_movies_array() {
        var movies = [Movie]()
        
        let getMovieExpectation = expectation(description: "Waiting for movies")
        
        sut.getTopRatedMovies { (responseMovies, error) in
            movies = responseMovies
            getMovieExpectation.fulfill()
        }
        
        waitForExpectations(timeout: 10) { (error) in
            XCTAssertFalse(movies.isEmpty)
        }
    }
    
}

extension MovieServiceTests {
    
    enum MovieServiceError: Error {
        case internalError
    }
    
    class MockMovieService: MovieService{
        func getMovieDetailsById(_ movieId: Int, completion: @escaping MovieResult) {
            if movieId != 0 {
                let movie = getFakeMovies(1).first
                completion(movie, nil)
            } else {
                let error = MovieServiceError.internalError
                completion(nil, error)
            }
        }
        
        func getTopRatedMovies(completion: @escaping MoviesResult) {
            let movies = getFakeMovies(10)
            completion(movies, nil)
        }
        
        func getFakeMovies(_ quantity: Int) -> [Movie] {
            
            var movies = [Movie]()
            
            for i in 1...quantity {
                let faker = Faker(locale: "es-CO")
                let movie = Movie(id: i, name: faker.lorem.word(), overview: faker.lorem.paragraph(), releaseDate: "01-01-2019", voteAverage: 9.0, backdropPath: faker.internet.url(), posterPath: faker.internet.url())
                movies.append(movie)
            }
            
            return movies
        }
    }
    
}
