//
//  ApiContext.swift
//  static-api
//
//  Created by John Edwin Guerrero Ayala on 4/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

protocol ApiContext {
    var authToken: String? { get set }
    var environment: ApiEnvironment { get set }
}
