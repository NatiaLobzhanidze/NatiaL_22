//
//  CollViewDataSAndDelegate.swift
//  NatiaL_22
//
//  Created by Natia's Mac on 13.08.22.
//

import Foundation
import UIKit


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.movieList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellid, for: indexPath) as! MovieListCollectionViewCell
        let genres = findGenre(from: movieList[indexPath.row].genre_ids)
        cell.configure(with: movieList[indexPath.row], genre: genres)
            return cell
        
       
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = MovieDetailsViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func findGenre(from movieId: [Int]) -> [String] {
        var resultArr = [String]()
        
        //check if movielists element id == movieIds all element
        
       movieGenre.forEach { elem in
           if movieId.contains(elem.id) {
               resultArr.append(elem.name)
           }
        }
        return resultArr
    }
    
    
}
