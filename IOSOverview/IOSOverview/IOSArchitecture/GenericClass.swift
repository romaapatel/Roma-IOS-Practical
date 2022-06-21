//
//  GenericClass.swift
//  IOSOverview
//
//  Created by Roma Patel on 22/06/22.
//

import Foundation

import Alamofire


class APIServices {
    
    // MARK: Instance variable
    static let shared = APIServices()
    var responseCode: Int?
    let baseUrl = "https://reqres.in/"
    
    // MARK: API calling operations
    enum APIUrls {
        case listUsers
    }
    
    // MARK: URLEncoding style
    enum UrlEncoding {
        
        static func urlEncoding(url: APIUrls) -> ParameterEncoding {
            switch url {
            case .listUsers:
                return URLEncoding.default
            }
        }
        
        // MARK: URL Endpoints
        static func evaluate(urls: APIUrls) -> String {
            switch urls {
            case .listUsers:
                return "api/users?page=2"
            }
        }
        
        // MARK: HTTPMethodas
        static func urlMethod(url: APIUrls) -> HTTPMethod {
            switch url {
                
            case .listUsers:
                return .get
            }
        }
        
    }
    
    // MARK: Alamofire request method
    func request<T: Decodable>(typeT: T.Type, apiUrl: APIUrls, param: Dictionary<String, Any>?, url: URL?, completion: @escaping (T?, Int) -> Void, error: @escaping () -> Void) {
        guard let url = url else { return }
        AF.request(url, method: UrlEncoding.urlMethod(url: apiUrl), parameters: param, encoding: UrlEncoding.urlEncoding(url: apiUrl), headers: nil, interceptor: nil, requestModifier: nil).response { [weak self] response in
            switch response.result {
            case .success(let data):
                if let responseData = data {
                    do {
                        guard let jsonData = try JSONDecoder().decode(T?.self, from: responseData) else { return }
                        completion(jsonData, response.response?.statusCode ?? 0)
                        self?.responseCode = response.response?.statusCode ?? 0
                        print(response.response?.statusCode ?? 0)
                    } catch (let error) {
                        print("Error \(error)")
                    }
                } else {
                    completion(nil, response.response?.statusCode ?? 0)
                    error()
                }
                break
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
