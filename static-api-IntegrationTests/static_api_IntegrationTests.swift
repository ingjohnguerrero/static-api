//
//  static_api_IntegrationTests.swift
//  static-api-IntegrationTests
//
//  Created by John Edwin Guerrero Ayala on 4/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import XCTest
@testable import static_api

class static_api_IntegrationTests: XCTestCase {
    
    let testMovieId = 129
    let env = ApiEnvironment.production
    var context: ApiContext!
    var sut: AlamofireMovieService!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        context = NonPersistentApiContext(environment: env)
        context.authToken = "b56c41fd645593b31df96ee185296c4c"
        sut = AlamofireMovieService(context: context)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_get_movie_details() {
        
        var movie:Movie?
        
        let movieExpectation = expectation(description: "Waiting for movie details")
        sut.getMovieDetailsById(testMovieId) { (responseMovie, error) in
            movie = responseMovie
            movieExpectation.fulfill()
        }
        
        waitForExpectations(timeout: 10) { (error) in
            XCTAssertNotNil(movie)
        }
    }
}
