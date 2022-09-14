//
//  Courses.swift
//  PortalProject
//
//  Created by Alper Us on 2022-09-12.
//

import Foundation

class Courses {
    var courseId:String
    var courseName:String
    
    init (courseIdInit:String,courseNameInit:String){
        self.courseId = courseIdInit
        self.courseName = courseNameInit
        
    }
    
    func getCourseId() -> String{
        return self.courseId
    }
    func getCourseName() -> String{
        return self.courseName
    }
}
