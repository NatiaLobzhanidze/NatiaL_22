//
//  bin.swift
//  NatiaL_22
//
//  Created by Natia's Mac on 14.08.22.
//

import Foundation
//
//    func getData() {
//
//        let urlString = "https://api.themoviedb.org/3/tv/top_rated?"
//
//         var urlComponent = URLComponents(string: urlString)
//        urlComponent?.queryItems = [
//            URLQueryItem.init(name: "api_key", value: "a0aba78a00d2acb51bf5318879fcfa07")
//        ]
//    let url = URL(string: urlString)
//        var request = URLRequest(url: url!)
//        request.httpMethod = "GET"
//
//       session.dataTask(with: (urlComponent?.url!)!) { data, response, error in
//            if let error = error {
//                print(error.localizedDescription)
//            }
//
//            guard let data = data else {
//                print("cant find data")
//                return
//            }
//
//
//            do {
//                let json = try JSONDecoder().decode(ResultResponse.self, from: data)
//                print(json.results)
//
//            } catch {
//                print(error)
//            }
//        }.resume()
//    }
//
//
//
//}
