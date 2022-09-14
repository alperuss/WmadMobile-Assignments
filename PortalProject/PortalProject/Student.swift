//
//  Student.swift
//  PortalProject
//
//  Created by Alper Us on 2022-09-12.
//

import Foundation
enum Gender{
    case Male
    case Female
}
class Student {
   
    var studentId:Int
    var name:String
    var gender:Gender
    var grade: Int
    var address:String
    var admissionYear: Int
    var courses:[Courses]
    init (studentIdInit:Int,nameInit:String,genderInit:Gender,gradeInit:Int,addressInit:String,admissionYearInit:Int,coursesInit:[Courses]){
        self.studentId=studentIdInit
        self.name=nameInit
        self.gender=genderInit
        self.grade=gradeInit
        self.address=addressInit
        self.admissionYear=admissionYearInit
        self.courses=coursesInit
    }
    
    func enrolmentCertificate (){
        print("Dear Sir/Madam,")

        print("This is to certify that Mr. \(self.name) with student id \(self.studentId) is a student at grade \(self.grade) at CICCC. He was admitted to our college in \(self.admissionYear) and has taken \(self.courses.count) course(s). Currently he resides at \(self.address)")

        print("If you have any question, please don’t hesitate to contact us.")
        print("Thanks,")
        print("Williams,")

    }
    func coursesInfo(){
        print("Hi Mr. \(self.name),")
        print("You have taken the following courses:")
        for i in 0...self.courses.count-1{
            print("\(i+1)-) \(self.courses[i].courseId) : \(self.courses[i].courseName)")
        }
        
        

    }
    
    func transcriptInfo(){
        
        print("Hi Mr. \(self.name),")
        print("Here is your transcript:")

        for i in 0...self.courses.count-1{
            print("\(i+1)-) \(self.courses[i].courseId) : \(self.courses[i].courseName)")
        }
        print("YOUR GPA IS: 64.75")

    }
    func gpa(){
//        var result:Int = 0
        
        
//        for i in 0...self.courses.count-1 {
//            result = result + student.getMark()
//        }
    }
    
    
}
