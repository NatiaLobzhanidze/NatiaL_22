//
//  AddConstraintsToCollectionView.swift
//  NatiaL_22
//
//  Created by Natia's Mac on 13.08.22.
//

import Foundation
import UIKit

extension ViewController {
    func addConstraintsToCollectionV() {
       
        collectionView.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingTop: 20, paddingLeft: 20, paddingBottom: 20, paddingRight: 20, width: nil, height: nil)
    }
}
