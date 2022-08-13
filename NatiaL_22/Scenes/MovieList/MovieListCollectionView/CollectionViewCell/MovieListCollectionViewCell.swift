//
//  MovieListCollectionViewCell.swift
//  NatiaL_22
//
//  Created by Natia's Mac on 13.08.22.
//

import UIKit

class MovieListCollectionViewCell: UICollectionViewCell {
  
    
    lazy var moviePoster: UIImageView = {
           let imageView = UIImageView()
        imageView.image = UIImage(systemName: "pencil.circle.fill")
           imageView.translatesAutoresizingMaskIntoConstraints = false
           return imageView
       }()
    
    lazy var movieTitle: UILabel = {
          let label = UILabel()
        label.text = "Harry Potter and Monster"
        label.numberOfLines = 0
          label.textColor = UIColor.blue
          label.font = UIFont.systemFont(ofSize: 14)
          label.translatesAutoresizingMaskIntoConstraints = false
          return label
      }()
    
    
    lazy var movieGenre: UILabel = {
          let label = UILabel()
        label.text = "fantastic"
          label.textColor = UIColor.lightGray
          label.font = UIFont.systemFont(ofSize: 20)
          label.translatesAutoresizingMaskIntoConstraints = false
          return label
      }()
    
    
    override init(frame: CGRect) {
         super.init(frame: frame)
        
         addViews()
        
     }
     
   
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
     
     func setupCell(colour: UIColor) {
         self.backgroundColor = colour
     }
    
    
    func addViews() {
        contentView.addSubview(moviePoster)
        contentView.addSubview(movieTitle)
        contentView.addSubview(movieGenre)
        addConstraintsToViews()
    }
    
    func configure(with item: FatchedMovies) {
        let imageUrl = "https://image.tmdb.org/t/p/original"+item.poster_path!
        movieTitle.text = item.name
        movieGenre.text = "\(item.genre_ids)"
        
        moviePoster.load(url: URL(string: imageUrl)!)
   }
}

extension UIImageView {
    
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
