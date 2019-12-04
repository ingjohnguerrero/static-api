//
//  MovieModelTests.swift
//  static-apiTests
//
//  Created by John Edwin Guerrero Ayala on 3/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import XCTest
@testable import static_api

class MovieModelTests: XCTestCase {
    
    var sut = Movie(name: "Flushed away", overview: "A really nice movie", releaseDate: "2018-07-13", voteAverage: 7.3, backdropPath: "backdrop_path.jpg", posterPath: "poster_path.jpg")
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        //XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_Model_is_not_null() {
        XCTAssertNotNil(sut)
    }
    
    func test_Model_init_with_name() {
        XCTAssertEqual(sut.title, "Flushed away")
    }
    
    func test_model_init_with_overview() {
        XCTAssertEqual(sut.overview, "A really nice movie")
    }
    
    func test_model_init_with_release_date() {
        XCTAssertEqual(sut.releaseDate, "2018-07-13")
    }
    
    func test_model_init_with_vote_average() {
        XCTAssertEqual(sut.voteAverage, 7.3)
    }
    
    func test_model_init_with_backdrop_path() {
        XCTAssertEqual(sut.backdropPath, "backdrop_path.jpg")
    }
    
    func test_model_init_with_poster_path() {
        XCTAssertEqual(sut.posterPath, "poster_path.jpg")
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
