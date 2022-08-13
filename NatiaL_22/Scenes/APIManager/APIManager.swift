//
//  APIManager.swift
//  NatiaL_22
//
//  Created by Natia's Mac on 13.08.22.
//

import Foundation
import UIKit

enum NetworkError: Error {
    case dataNotFound
}

class APIManager {
    static let apiManager = APIManager()
    
 //   typealias completionBlock<T: Codable> = ((Result<[T], Error>) -> Void)
    let session = URLSession.shared
    
    
    func getData() {
        let urlString = "https://api.themoviedb.org/3/tv/top_rated?"
        
         var urlComponent = URLComponents(string: urlString)
        urlComponent?.queryItems = [
            URLQueryItem.init(name: "api_key", value: "a0aba78a00d2acb51bf5318879fcfa07")
        ]
    let url = URL(string: urlString)
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
       session.dataTask(with: (urlComponent?.url!)!) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
            }
            
            guard let data = data else {
                print("cant find data")
                return
            }
          
            
            do {
            let json =  try JSONSerialization.jsonObject(with: data, options: [])
    
print(json)

            } catch {
                print(error)
            }
        }.resume()
    }

    
   
}


//func getData<T: Codable>(url: String, completion: @escaping (T) -> (Void)) {
//
//    guard let url = URL(string: url) else { return }
//
//    session.dataTask(with: URLRequest(url: url)) { data, response, error in
//
//        if let error = error {
//            print(error.localizedDescription)
//
//        }
//        guard let response = response as? HTTPURLResponse else {
//            return
//        }
//
//        guard (200...299).contains(response.statusCode) else {
//            print("wrong status")
//
//            return
//        }
//        guard let data = data  else {
//
//            return
//        }
//
//        do {
//
//            let decoded = try JSONDecoder().decode(T.self, from: data)
//
//            completion(decoded)
//
//        } catch {
//            print(error.localizedDescription)
//        }
//
//    }.resume()
//
//
//
//}
