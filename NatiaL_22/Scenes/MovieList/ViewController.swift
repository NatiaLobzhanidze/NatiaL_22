//
//  ViewController.swift
//  NatiaL_22
//
//  Created by Natia's Mac on 13.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    var movieList = [FatchedMovies]()
    var apiManager = APIManager()
  lazy var collectionView: UICollectionView = {
        return configureCollectionView()
          
    }()
    var cellid = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        AddCollectionView()
       networkCall()
        
    }

    func networkCall(){
        apiManager.getData(urlString: "https://api.themoviedb.org/3/tv/top_rated?") { (res: ResultResponse ) in
            DispatchQueue.main.async {
                self.movieList = res.results
                self.collectionView.reloadData()
            }
            
        }
    }
        }
  



