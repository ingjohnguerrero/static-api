//
//  Movie.swift
//  static-api
//
//  Created by John Edwin Guerrero Ayala on 3/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

struct Movie {
    var name = ""
    var overview = ""

    init() {

    }

    init(name: String, overview: String) {
        self.name = name
        self.overview = overview
    }
}
