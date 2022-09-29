//
//  main.swift
//  PortalProject
//
//  Created by Alper Us on 2022-09-12.
//

import Foundation
//let path = "/Users/alperus/Swift-Project/Students.txt"
//
//do {
//    // Use contentsOfFile overload.
//    // ... Specify ASCII encoding.
//    // ... Ignore errors.
//    let data = try NSString(contentsOfFile: path,
//        encoding: String.Encoding.ascii.rawValue)
//
//    // If a value was returned, print it.
//    print(data)
//}






let course1 = Courses(courseIdInit: "MADP101", courseNameInit: "Objective-C")
let course2 = Courses(courseIdInit: "MADP202", courseNameInit: "Project Management")
let course3 = Courses(courseIdInit: "MADP301", courseNameInit: "Java Programming")
let course4 = Courses(courseIdInit: "MADP401", courseNameInit: "Android Programming")
let course5 = Courses(courseIdInit: "MADP102", courseNameInit: "Object-Oriented Programming")
let course6 = Courses(courseIdInit: "MADP201", courseNameInit: "Problem Solving")
let course7 = Courses(courseIdInit: "MADP302", courseNameInit: "Web Development")
let course8 = Courses(courseIdInit: "MADP402", courseNameInit: "iOS Applications")

let courses=[course1,course2,course3,course4,course5,course6,course7,course8]


let student1 = Student(studentIdInit: 7813007, nameInit: "firstname1 lastname1", genderInit:.Male, gradeInit: 2, addressInit: "850 West Hastings, Vancouver", admissionYearInit: 2012, coursesInit: [course1,course2,course3,course4])
let student2 = Student(studentIdInit: 7813008, nameInit: "firstname2 lastname2", genderInit: .Male, gradeInit: 3, addressInit: "850 West Vancouver, Vancouver", admissionYearInit: 2012, coursesInit: [course1])

let student3 = Student(studentIdInit: 7813009, nameInit: "firstname3 lastname3", genderInit: .Male, gradeInit: 3, addressInit: "850 West Vancouver, Vancouver", admissionYearInit: 2012, coursesInit: [course1])

let studentCourse1 = StudentCourses(studentIdInit: 7813007, courseIdInit: "MADP101", markInit: 85)
let studentCourse2 = StudentCourses(studentIdInit: 7813007, courseIdInit: "MADP301", markInit: 60)
let studentCourse3 = StudentCourses(studentIdInit: 7813007, courseIdInit: "MADP402", markInit: 62)
let studentCourse4 = StudentCourses(studentIdInit: 7813007, courseIdInit: "MADP401", markInit: 60)

let account1 = Accounts(userInit: "user1", passwordInit: "password1")
let account2 = Accounts(userInit: "user2", passwordInit: "password2")
let account3 = Accounts(userInit: "user3", passwordInit: "password3")
let account4 = Accounts(userInit: "user4", passwordInit: "password4")
let account5 = Accounts(userInit: "user5", passwordInit: "password5")
let account6 = Accounts(userInit: "user6", passwordInit: "password6")
let account7 = Accounts(userInit: "user7", passwordInit: "password7")
let account8 = Accounts(userInit: "user8", passwordInit: "password8")

var arrayOfAccounts = [account1,account2,account3,account4,account5,account6,account7,account8]

var arrayOfStudents = [student1,student2,student3]

func begin(){
print("Please enter your account to login:")
print("********************************************")

print("Username:")
print("Password:")
if let userInput = readLine(){
    if let passwordInput = readLine(){
        for acc in arrayOfAccounts{
            if acc.getUser()==userInput && acc.getPassword()==passwordInput {
                if userInput=="user1"{
                    mainMenu(student: student1)
                }
                else if userInput=="user2"{
                    mainMenu(student: student2)                }
                else if userInput=="user3"{
                    mainMenu(student: student3)
                }
                else{
                print("Your account does not exist. Please try again!")
                }

            }

    }



    }
    
}

}
func mainMenu(student:Student){
   
    
    print("Select from the options:")
    print(" ************************************************************")
    print("      —-[1] Print my enrolment certificate")
    print("      —-[2] Print my courses")
    print("      —-[3] Print my transcript")
    print("      —-[4] Print my GPA")
    print("      —-[5] Print my ranking among all students in the college")
    print("—-[6] List all available courses")
    print("      —-[7] List all students")
    print("      -—[8] Logout")
    print("      -—[9] Exit")
    print(" ************************************************************")

    if let input = readLine() {
        if let number = Int(input){
            while number != 9{
                if number == 1{
                student.enrolmentCertificate()
                }
                else if number == 2 {
                student.coursesInfo()
                }
                else if number == 3 {
                    student.transcriptInfo()
                }
                else if number == 4{
                student.gpa()
                }
                else if number == 6 {
                    for c in courses {
                        print(c.courseId ," : ", c.courseName)
                    }
                }
                else if number == 7 {
                    for students in arrayOfStudents{
                        print(students.name ," : ", students.studentId)
                    }
                
                }
                else if number == 8 {
                    begin()
                }
                else if number == 9 {
                    break
                }
                
            }
    }
    
}
}
begin()

