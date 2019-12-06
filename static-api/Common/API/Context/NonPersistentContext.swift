//
//  NonPersistentContext.swift
//  static-api
//
//  Created by John Edwin Guerrero Ayala on 4/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

class NonPersistentApiContext: ApiContext {

    init(environment: ApiEnvironment) {
        self.environment = environment
    }

    var authToken: String?
    var environment: ApiEnvironment
}
