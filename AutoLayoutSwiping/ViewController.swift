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
        
        let attibutedText = NSMutableAttributedString(string: "Join us today in our fun and game!", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)])
        
        attibutedText.append(NSAttributedString(string: "\n\n\nAre you ready for loads and loads of fun? Don't wait any longer! We hope to see you in our store soon.", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 13), NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)]))
        textView.attributedText = attibutedText
        //old style
//        textView.text = "Join us today in our fun and game!"
//        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    
    private let previousButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("PREV", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), for: .normal)
        return button
    }()
    
    private let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("NEXT", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        let pinkColor = UIColor(red: 233/255, green: 68/255, blue: 133/255, alpha: 1)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
         button.setTitleColor(pinkColor, for: .normal)
        return button
    }()
    
    private let pageControl:UIPageControl  = {
        let pc  = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = 4
        pc.currentPageIndicatorTintColor = .red
        pc.pageIndicatorTintColor = UIColor(red: 249/255, green: 207/255, blue: 224/255, alpha: 1)
        return pc
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // App entry point
        
        //let imageView = UIImageView(image: #imageLiteral(resourceName: "bear_first"))
        //   imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50) programitically positioning
        
        //view.addSubview(bearImgeView)
        view.addSubview(descriptionTextView)
        
        setupBottomControls()
        
        setupLayout()
       
     
        
        
    }
    
    fileprivate func setupBottomControls(){
        view.addSubview(previousButton)
      //  previousButton.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
       // previousButton.frame = CGRect(x: 0, y: 0, width: 200, height: 50 ) //just to see that it exist
       
//
//        let yellowView = UIView()
//        yellowView.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
//
        let greenView = UIView()
        greenView.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        
//        let blueView = UIView()
//        blueView.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
//
        let bottomsControlsStackView = UIStackView(arrangedSubviews: [previousButton, pageControl, nextButton])
        bottomsControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomsControlsStackView.distribution = .fillEqually
        bottomsControlsStackView.axis = .horizontal
        
        view.addSubview(bottomsControlsStackView)
        
        NSLayoutConstraint.activate([
            bottomsControlsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor ),
            bottomsControlsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomsControlsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomsControlsStackView.heightAnchor.constraint(equalToConstant: 50)
            ])// if i am using this i do not need to use .isActive when i am calling the contraints
    }

    private func setupLayout() {
        
        let topImageContainerView = UIView()
       // topImageContainerView.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
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
        //descriptionView
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true // this needs to be a negative value
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true


    }

    
    
   
}











