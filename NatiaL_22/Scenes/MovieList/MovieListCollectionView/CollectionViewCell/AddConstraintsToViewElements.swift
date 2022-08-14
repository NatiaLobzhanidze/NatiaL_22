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
        moviePoster.anchor(top: contentView.topAnchor, left: contentView.leftAnchor, bottom: nil, right: contentView.rightAnchor, paddingTop: 10, paddingLeft: 30, paddingBottom: 0, paddingRight: 30, width: nil, height: 250)
        
        
        //movieTitle
        movieTitle.anchor(top: moviePoster.bottomAnchor, left: contentView.leftAnchor, bottom: movieGenre.topAnchor, right: contentView.rightAnchor, paddingTop: 20, paddingLeft: 20, paddingBottom: 10, paddingRight: 20, width: nil, height: nil)
        
        //movieGenre
        movieGenre.anchor(top: nil, left: contentView.leftAnchor, bottom: contentView.bottomAnchor, right: contentView.rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: 10, paddingRight: 20, width: nil, height: 35)
        
        
    }
    
}
