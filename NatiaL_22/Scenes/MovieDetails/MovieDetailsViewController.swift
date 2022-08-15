//
//  MovieDetailsViewController.swift
//  NatiaL_22
//
//  Created by Natia's Mac on 15.08.22.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    let scrollView: UIScrollView = {
        let scr = UIScrollView()
        scr.backgroundColor = .blue
        return scr
    }()
    
     lazy var contentView: UIView = {
      let contentView = UIView()
      contentView.backgroundColor = .green
    
      return contentView
    }()
    
   lazy var coverImage: UIImageView = {
        let img = UIImageView()
        img.image =  UIImage(systemName: "tray.full.fill")
        return img
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        // Do any additional setup after loading the view.
    }
    
    func setupViews() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(coverImage)
        addContraintsToDetailsView()
       
    }
  

}
