//
//  ConfigureCollectionView.swift
//  NatiaL_22
//
//  Created by Natia's Mac on 13.08.22.
//

import Foundation
import UIKit

extension ViewController {
    
    func AddCollectionView() {
        self.view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MovieListCollectionViewCell.self, forCellWithReuseIdentifier: cellid)
        addConstraintsToCollectionV()
    }
    
    func configureCollectionView()-> UICollectionView {
        
        let myListLayout = UICollectionViewFlowLayout()
        myListLayout.itemSize = CGSize(width: UIScreen.main.bounds.width - 50, height: 380)
        myListLayout.minimumLineSpacing = 1
        myListLayout.sectionHeadersPinToVisibleBounds = true
        
        let myListView = UICollectionView(frame: .zero, collectionViewLayout: myListLayout)
        myListView.translatesAutoresizingMaskIntoConstraints = false
        myListView.bounces = false
        myListView.alwaysBounceVertical = false
        myListView.showsVerticalScrollIndicator = true
        
        return myListView
    }
}
