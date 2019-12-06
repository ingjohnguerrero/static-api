//
//  AlamofireService.swift
//  static-api
//
//  Created by John Edwin Guerrero Ayala on 4/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation
import Alamofire

class AlamofireService {

    init(context: ApiContext) {
        self.context = context
    }

    var context: ApiContext

    func get(at route: ApiRoute) -> DataRequest {
        return request(at: route, method: .get, encoding: URLEncoding.default)
    }

    func post(at route: ApiRoute) -> DataRequest {
        return request(at: route, method: .post, encoding: JSONEncoding.default)
    }

    func put(at route: ApiRoute) -> DataRequest {
        return request(at: route, method: .put, encoding: JSONEncoding.default)
    }

    func request(at route: ApiRoute, method: HTTPMethod, params: Parameters = [:], encoding: ParameterEncoding) -> DataRequest {
        let routeUrl = route.url(for: context.environment)
        return AF
            .request(routeUrl, method: method, parameters: params, encoding: encoding)
            .validate()
    }
}
