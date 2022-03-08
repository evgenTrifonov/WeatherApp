//
//  NetworkManager.swift
//  WeatherApp
//
//  Created by Evgeny Trifonov on 08.03.2022.
//

import Foundation

final class NetworkManager<T: Codable> {
    static func fetch(for url: URL, comlection: @escaping (Result<T, NetworkError>) -> Void) {
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            guard error == nil else {
                print(String(describing: error!))
                comlection(.failure(.error(err: error!.localizedDescription)))
                return
            }
          
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                comlection(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                comlection(.failure(.invalidDate))
                return
            }
            
            do {
                let json = try JSONDecoder() .decode(T.self, from: data)
                comlection(.success(json))
            } catch let err {
                print(String(describing: err))
                comlection(.failure(.decoderError(err: err.localizedDescription)))
            }
            
        } .resume()
        
      
    }
}

enum NetworkError: Error {
    case invalidResponse
    case invalidDate
    case error(err: String)
    case decoderError(err: String)
    }

