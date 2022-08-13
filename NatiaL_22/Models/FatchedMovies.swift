//
//  MovieListModel.swift
//  NatiaL_22
//
//  Created by Natia's Mac on 13.08.22.
//

import Foundation
import UIKit
struct ResultResponse: Codable {
    
    var results: [FatchedMovies]

}


struct FatchedMovies: Codable {
    let poster_path : String?
    let name: String
    let genre_ids: [Int]
    
//        enum codingkeys: String, CodingKey {
//            case photo = "poster_path"
//            case title = "name"
//            case genre = "genre_ids"
//        }
}
