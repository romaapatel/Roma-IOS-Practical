//
//  AlamoFireClient.swift
//  IOSOverview
//
//  Created by Roma Patel on 31/05/22.
//

import Foundation
import Alamofire

class AlamofireClient {
    static func sendPostRequest<T: Codable>(requestType: HTTPMethod, apiType: ApiType, body: T, apiResponse: APIResponse) {
        if let url = URL(string: R.string.localizable.baseURl() + apiType.rawValue) {
            let headers: HTTPHeaders = [.contentType("application/json")]
            AF.request(url, method: requestType, parameters: body.self, encoder: JSONParameterEncoder.default, headers: headers).response { response in
                guard let data = response.data else { return }
                do {
                    let result = try JSONDecoder().decode(Response.self, from: data)
                    apiResponse.onApiSucess(response: result)
                } catch {
                    guard let errors = try? JSONDecoder().decode(Error.self, from: data) else {return}
                    apiResponse.onApiFailure(error: errors)
                }
            }
        } else {
            return
        }
    }
}

enum RequestType: String {
    case get = "GET"
    case post = "POST"
}

enum ApiType: String {
    case signIn = "api/login"
    case signUp = "api/register"
}
