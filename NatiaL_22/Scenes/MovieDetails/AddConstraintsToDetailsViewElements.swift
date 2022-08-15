//
//  AddConstraintsToViewElements.swift
//  NatiaL_22
//
//  Created by Natia's Mac on 15.08.22.
//

import Foundation
import UIKit
extension MovieDetailsViewController {
    
func addContraintsToDetailsView() {
    scrollView.anchor(top: view.layoutMarginsGuide.topAnchor, left: view.leftAnchor, bottom: view.layoutMarginsGuide.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: nil, height: nil)
    
    contentView.anchor(top: scrollView.topAnchor, left: scrollView.leftAnchor, bottom: nil, right: scrollView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: nil, height: nil)
    
    contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
    
    coverImage.anchor(top: contentView.topAnchor, left: contentView.leftAnchor, bottom: nil, right: contentView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: nil, height: 200)
}
}
