//
//  MainViewCell.swift
//  iOSTestProject
//
//  Created by Benjamin Acquah on 8/12/21.
//

import UIKit

class MainViewCell: BaseCell {
    
    let watchedIcon = Components().imageContainer(content: "watch")
    let unwatchedIcon = Components().imageContainer(content: "lock")
    let lessonNumber = Components().textLabel(content: "Lesson 1", font: 16, color: .blue)
    let subjectTitle = Components().textLabel(content: "Statistics", font: 16, color: .gray)
    
    var isWatched: Bool = false
    
    var course: Course? {
        didSet {
            subjectTitle.text = course?.lesson_title
            if ((course?.isWated) != true) {
                watchedIcon.image = UIImage(named: "lock")
            }
            lessonNumber.text = course?.lesson_number
        }
    }
    
    override func setupView() {
        super.setupView()
        
        addSubview(watchedIcon)
        if isWatched {
            addSubview(unwatchedIcon)
        }
        addSubview(lessonNumber)
        addSubview(subjectTitle)
        
        watchedIcon.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        watchedIcon.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
        watchedIcon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        watchedIcon.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        lessonNumber.leftAnchor.constraint(equalTo: watchedIcon.rightAnchor, constant: 12).isActive = true
        lessonNumber.topAnchor.constraint(equalTo: watchedIcon.topAnchor, constant: 0).isActive = true
        lessonNumber.bottomAnchor.constraint(equalTo: watchedIcon.bottomAnchor, constant: 0).isActive = true
        lessonNumber.widthAnchor.constraint(equalToConstant: 70).isActive = true
        lessonNumber.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        subjectTitle.leftAnchor.constraint(equalTo: lessonNumber.rightAnchor, constant: 8).isActive = true
        subjectTitle.topAnchor.constraint(equalTo: lessonNumber.topAnchor, constant: 0).isActive = true
        subjectTitle.bottomAnchor.constraint(equalTo: lessonNumber.bottomAnchor, constant: 0).isActive = true
        subjectTitle.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
    }
}
