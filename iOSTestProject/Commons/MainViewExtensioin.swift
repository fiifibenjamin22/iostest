//
//  MainViewExtensioin.swift
//  iOSTestProject
//
//  Created by Benjamin Acquah on 8/13/21.
//

import UIKit

extension MainViewController {
    
    func setupView(){
        self.view.addSubview(collectionView)
        self.view.addSubview(mainView)
        mainView.addSubview(playerView)
        mainView.addSubview(controlsView)
        mainView.addSubview(switchIcon)
        mainView.addSubview(customController)
        mainView.addSubview(menuIcon)
        mainView.addSubview(className)
        
        mainView.addSubview(floatingBtn)
        
        mainView.addSubview(locationIcon)
        mainView.addSubview(schoolLocation)
        
        mainView.addSubview(viewsIcon)
        mainView.addSubview(viewsLabel)
        
        mainView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mainView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        mainView.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        mainView.heightAnchor.constraint(equalToConstant: self.view.frame.height / 2).isActive = true
        mainView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        mainView.layer.shadowOffset = CGSize(width: 1.5, height: 2.0)
        mainView.layer.shadowOpacity = 10.0
        mainView.layer.masksToBounds = false
        mainView.backgroundColor = .white
        
        playerView.topAnchor.constraint(equalTo: mainView.topAnchor).isActive = true
        playerView.leftAnchor.constraint(equalTo: mainView.leftAnchor).isActive = true
        playerView.rightAnchor.constraint(equalTo: mainView.rightAnchor).isActive = true
        playerView.heightAnchor.constraint(equalToConstant: (self.view.frame.height / 2) - 180).isActive = true

        controlsView.topAnchor.constraint(equalTo: playerView.bottomAnchor, constant: 0).isActive = true
        controlsView.leftAnchor.constraint(equalTo: playerView.leftAnchor, constant: 0).isActive = true
        controlsView.rightAnchor.constraint(equalTo: playerView.rightAnchor, constant: 0).isActive = true
        controlsView.heightAnchor.constraint(equalToConstant: 40).isActive = true

        customController.topAnchor.constraint(equalTo: controlsView.bottomAnchor, constant: 8).isActive = true
        customController.leftAnchor.constraint(equalTo: playerView.leftAnchor, constant: 50).isActive = true
        customController.rightAnchor.constraint(equalTo: playerView.rightAnchor, constant: -50).isActive = true
        customController.heightAnchor.constraint(equalToConstant: 45).isActive = true
        customController.tintColor = .darkGray
        customController.layer.borderColor = UIColor.darkGray.cgColor

        switchIcon.rightAnchor.constraint(equalTo: customController.leftAnchor, constant: -8).isActive = true
        switchIcon.centerYAnchor.constraint(equalTo: customController.centerYAnchor, constant: 0).isActive = true
        switchIcon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        switchIcon.heightAnchor.constraint(equalToConstant: 20).isActive = true

        menuIcon.leftAnchor.constraint(equalTo: customController.rightAnchor, constant: 8).isActive = true
        menuIcon.centerYAnchor.constraint(equalTo: customController.centerYAnchor, constant: 0).isActive = true
        menuIcon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        menuIcon.heightAnchor.constraint(equalToConstant: 20).isActive = true

        className.topAnchor.constraint(equalTo: customController.bottomAnchor, constant: 13).isActive = true
        className.leftAnchor.constraint(equalTo: playerView.leftAnchor, constant: 12).isActive = true
        className.rightAnchor.constraint(equalTo: playerView.rightAnchor, constant: -8).isActive = true
        className.heightAnchor.constraint(equalToConstant: 20).isActive = true

        floatingBtn.rightAnchor.constraint(equalTo: playerView.rightAnchor, constant: -8).isActive = true
        floatingBtn.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -8).isActive = true
        floatingBtn.widthAnchor.constraint(equalToConstant: 50).isActive = true
        floatingBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        floatingBtn.backgroundColor = .white
        // Shadow Color and Radius
        floatingBtn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        floatingBtn.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        floatingBtn.layer.shadowOpacity = 1.0
        floatingBtn.layer.shadowRadius = 25
        floatingBtn.layer.masksToBounds = false
        floatingBtn.layer.cornerRadius = 25
        floatingBtn.tintColor = .black

        locationIcon.topAnchor.constraint(equalTo: className.bottomAnchor, constant: 8).isActive = true
        locationIcon.leftAnchor.constraint(equalTo: className.leftAnchor, constant: 0).isActive = true
        locationIcon.heightAnchor.constraint(equalToConstant: 15).isActive = true
        locationIcon.widthAnchor.constraint(equalToConstant: 15).isActive = true

        schoolLocation.topAnchor.constraint(equalTo: locationIcon.topAnchor, constant: 0).isActive = true
        schoolLocation.leftAnchor.constraint(equalTo: locationIcon.rightAnchor, constant: 4).isActive = true
        schoolLocation.rightAnchor.constraint(equalTo: floatingBtn.leftAnchor, constant: -8).isActive = true
        schoolLocation.bottomAnchor.constraint(equalTo: locationIcon.bottomAnchor, constant: 0).isActive = true

        viewsIcon.topAnchor.constraint(equalTo: locationIcon.bottomAnchor, constant: 8).isActive = true
        viewsIcon.leftAnchor.constraint(equalTo: locationIcon.leftAnchor, constant: 0).isActive = true
        viewsIcon.heightAnchor.constraint(equalToConstant: 15).isActive = true
        viewsIcon.rightAnchor.constraint(equalTo: locationIcon.rightAnchor, constant: 0).isActive = true

        viewsLabel.topAnchor.constraint(equalTo: viewsIcon.topAnchor, constant: 0).isActive = true
        viewsLabel.leftAnchor.constraint(equalTo: viewsIcon.rightAnchor, constant: 4).isActive = true
        viewsLabel.rightAnchor.constraint(equalTo: schoolLocation.rightAnchor, constant: 0).isActive = true
        viewsLabel.bottomAnchor.constraint(equalTo: viewsIcon.bottomAnchor, constant: 0).isActive = true
        
        collectionView.topAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0).isActive = true
        collectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        collectionView.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(MainViewCell.self, forCellWithReuseIdentifier: CommonStrings.mainCellId())
    }
    
    func fetchCourses() {
        self.courseArray.append(Course(lesson_number: "lesson 1", lesson_title: "statistics", lesson_video: "https://www.youtube.com/watch?v=vHZPeohPHqo", lesson_description: "", is_quiz: false, isWated: true))
        self.courseArray.append(Course(lesson_number: "lesson 2", lesson_title: "Trignometry", lesson_video: "https://www.youtube.com/watch?v=zwv5Xm93egM", lesson_description: "", is_quiz: false, isWated: true))
        self.courseArray.append(Course(lesson_number: "lesson 3", lesson_title: "Probability 1", lesson_video: "https://www.youtube.com/watch?v=TAavlpk2Uuk", lesson_description: "", is_quiz: false, isWated: true))
        self.courseArray.append(Course(lesson_number: "lesson 4", lesson_title: "Probability 2", lesson_video: "https://www.youtube.com/watch?v=Ke7Tr4RgRTs", lesson_description: "", is_quiz: false, isWated: true))
        self.courseArray.append(Course(lesson_number: "lesson 5", lesson_title: "1st Class Exercise", lesson_video: "https://www.youtube.com/watch?v=eoSDHSQIg_Y", lesson_description: "", is_quiz: false, isWated: true))
        self.courseArray.append(Course(lesson_number: "Quiz", lesson_title: "Sets", lesson_video: "https://www.youtube.com/watch?v=1rJwcGIYBlA", lesson_description: "", is_quiz: false, isWated: false))
        self.courseArray.append(Course(lesson_number: "lesson 7", lesson_title: "Triangles", lesson_video: "https://www.youtube.com/watch?v=s8kDg2G0VDg", lesson_description: "", is_quiz: false, isWated: false))
    }
}
