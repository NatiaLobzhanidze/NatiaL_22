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
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        addContraintsToDetailsView()
        // Do any additional setup after loading the view.
    }
    
    func addContraintsToDetailsView() {
        scrollView.anchor(top: view.layoutMarginsGuide.topAnchor, left: view.leftAnchor, bottom: view.layoutMarginsGuide.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: nil, height: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
