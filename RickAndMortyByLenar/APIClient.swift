//
//  Network.swift
//  RickAndMortyByLenar
//
//  Created by Ленар Бадыков on 21.10.2022.
//

import Foundation

struct Resource {
    let url: URL
    let method: String = "GET"
}

enum Result<T> {
    case success(T)
    case failure(Error)
}

enum APIClientError: Error {
    case noData
}

extension URLRequest {
    
    init(_ resource: Resource) {
        self.init(url: resource.url)
        self.httpMethod = resource.method
    }
    
}

final class APIClient {
    
    func load(_ resource: Resource, result: @escaping ((Result<Data>) -> Void)) {
        let request = URLRequest(resource)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let `data` = data else {
                result(.failure(APIClientError.noData))
                return
            }
            if let `error` = error {
                result(.failure(error))
                return
            }
            result(.success(data))
        }
        task.resume()
    }
    
}
