//
//  AddConstraintsToViewElements.swift
//  NatiaL_22
//
//  Created by Natia's Mac on 13.08.22.
//

import Foundation
import UIKit

extension MovieListCollectionViewCell {
    
    func addConstraintsToViews() {
        //image
        
        NSLayoutConstraint.activate([
            moviePoster.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            moviePoster.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            moviePoster.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
           // moviePoster.widthAnchor.constraint(equalToConstant: 190),
            moviePoster.heightAnchor.constraint(equalToConstant: 200),
            movieTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            movieTitle.topAnchor.constraint(equalTo: moviePoster.bottomAnchor, constant: 20),
            movieTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            movieTitle.widthAnchor.constraint(equalToConstant: 100),
            movieTitle.bottomAnchor.constraint(equalTo: movieGenre.topAnchor, constant: -10),
            
            movieGenre.leadingAnchor.constraint(equalTo: movieTitle.leadingAnchor),
            movieGenre.trailingAnchor.constraint(equalTo: movieTitle.trailingAnchor),
            movieGenre.heightAnchor.constraint(equalToConstant: 35),
            movieGenre.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
           
        ])
        
    }
    
}
