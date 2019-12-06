//
//  ApiRoute.swift
//  static-api
//
//  Created by John Edwin Guerrero Ayala on 4/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

/// `ApiRoute` stores all the routes in order to access to web services more easily.
protocol ApiRoute {
    var path: String { get }
    func url(for environment: ApiEnvironment) -> String
}

extension ApiRoute {
    /// method to get the full url to api route
    /// - parameters:
    ///     - environment: Api environment
    /// - returns: String with the complete url to resource
    func url(for environment: ApiEnvironment) -> String {
        return "\(environment.baseUrl)/\(path)"
    }
}
