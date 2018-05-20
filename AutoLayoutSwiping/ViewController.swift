//
//  ViewController.swift
//  AutoLayoutSwiping
//
//  Created by Patrik Kemeny on 20/5/18.
//  Copyright © 2018 Patrik Kemeny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       // App entry point
        
        let imageView = UIImageView(image: #imageLiteral(resourceName: "bear_first"))
        view.addSubview(imageView)
      //   imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50) programitically positioning
        
        //this enables our constraints autolayout for our imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        
    }



}

