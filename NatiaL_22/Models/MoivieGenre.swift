//
//  MoivieGenre.swift
//  NatiaL_22
//
//  Created by Natia's Mac on 14.08.22.
//

import Foundation
struct GanreResponse: Codable {
    let genres: [MovieGenre]
}
struct MovieGenre : Codable {
    let id: Int
    let name: String
}
