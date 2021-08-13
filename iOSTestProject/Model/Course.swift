//
//  Course.swift
//  iOSTestProject
//
//  Created by Benjamin Acquah on 8/13/21.
//

import Foundation

struct Course: Codable {
    var lesson_number: String
    var lesson_title: String
    var lesson_video: String
    var lesson_description: String
    var is_quiz: Bool
    var isWated: Bool
}
