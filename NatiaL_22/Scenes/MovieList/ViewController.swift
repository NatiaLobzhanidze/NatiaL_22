//
//  ViewController.swift
//  NatiaL_22
//
//  Created by Natia's Mac on 13.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    var movieList = [Result]()
    var apiManager = APIManager()
  lazy var collectionView: UICollectionView = {
        return configureCollectionView()
          
    }()
    var cellid = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        AddCollectionView()
       // networkCall()
        apiManager.getData()
    }

        }
  



