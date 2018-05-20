//
//  ViewController.swift
//  AutoLayoutSwiping
//
//  Created by Patrik Kemeny on 20/5/18.
//  Copyright © 2018 Patrik Kemeny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //lets Avoid Polluting ViewDidLoad
    // {refers to closure or anon. functions }
    let bearImgeView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "bear_first"))
        //this enables our constraints autolayout for our imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
        
        
        
    }() //to execute this closure i neet to add the two prantices ()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Join us today in our fun and game!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // App entry point
        
        //let imageView = UIImageView(image: #imageLiteral(resourceName: "bear_first"))
        //   imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50) programitically positioning
        
        //view.addSubview(bearImgeView)
        view.addSubview(descriptionTextView )
        setupLayout()
       
     
        
        
    }

    private func setupLayout() {
        
        let topImageContainerView = UIView()
        topImageContainerView.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        view.addSubview(topImageContainerView)
       // topImageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        //enable autolayout
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
//        topImageContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        topImageContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true //0.5 half of view
        
        
        topImageContainerView.addSubview(bearImgeView)
        bearImgeView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        bearImgeView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        bearImgeView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.6).isActive = true
        
        
        
//        bearImgeView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        //        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        bearImgeView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
//        bearImgeView.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        bearImgeView .heightAnchor.constraint(equalToConstant: 200).isActive = true
//
//        //descriptionView
//        descriptionTextView.topAnchor.constraint(equalTo: bearImgeView.bottomAnchor, constant: 60).isActive = true
//        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
//
//
    }

}











