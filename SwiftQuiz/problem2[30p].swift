//
//  main.swift
//  den
//
//  Created by Alper Us on 2022-09-20.
//

import Foundation

class Student{
    private var age = 10
    private var email = ""
    private var takenCourses = 6
    private var gpa = 68

    init(_ age: Int, _ email: String, _ takenCourses: Int, _ gpa: Int){
        self.age = age
        self.email = email
        self.takenCourses = takenCourses
        self.gpa = gpa
    }
    func getAge()->Int{
        return self.age
    }
    
    func getEmail()->String{
        return self.email
    }
    func getNumberOfCourses()->Int{
        return self.takenCourses
    }
    func getGpa()->Int{
        return self.gpa
    }
}

class Search{
    static func searchForStudents(list students: [Student], with condition: (Student)->Bool, their specification: (Student)->String,
    action perform: (String)->Void){

        for student in students{
            if condition(student){
                let spec = specification(student)
                perform(spec)
            }
        }
    }
}
let st1 = Student(23, "a.gmail.com", 5, 78)
let st2 = Student(22, "b.gmail.com", 8, 72)
let st3 = Student(19, "c.gmail.com", 7, 63)
let st4 = Student(25, "d.gmail.com", 6, 81)
let st5 = Student(24, "e.gmail.com", 4, 66)
let st6 = Student(22, "f.gmail.com", 7, 81)

var students:[Student] = []
students.append(st1)
students.append(st2)
students.append(st3)
students.append(st4)
students.append(st5)
students.append(st6)

func olderAge22(student:Student)->Bool{
    if student.getAge()>22{
        return true
    }
    else{
        return false
    }
    
}
func ageBetween20and23(student:Student)->Bool{
    if (student.getAge()>=20 || student.getAge()<=23){
        return true
    }
    else{
        return false
    }
}

func getStudentEmail(student:Student)->String{
    return student.getEmail()
}

func printStudent(str: String){
    print(str)
}

func checkCourses(student:Student)->Bool{
    if student.getNumberOfCourses()>5{
        return true
    }
    else{
        return false
    }
}

func checkStudent(student:Student)->Bool{
    if student.getAge()>0 || student.getNumberOfCourses()>0 || student.getEmail().isEmpty || student.getGpa()>0{
        return true
        
    }
    else{
        return false
    }
}
func getStudentInfo(student:Student)->String{
    return ("\(student.getEmail()) \(student.getGpa()) \(student.getNumberOfCourses()) \(student.getAge())")
}


for student in students {
    Search.searchForStudents(list: students, with: olderAge22(student:student), their: getStudentEmail(student:student), action: printStudent(str:""))
}

for student in students {
    Search.searchForStudents(list: students, with: ageBetween20and23(student:student), their: getStudentEmail(student:student), action: printStudent(str:""))
}
for student in students {
    Search.searchForStudents(list: students, with: checkCourses(student:student), their: getStudentEmail(student:student), action: printStudent(str:""))
}
for student in students {
    Search.searchForStudents(list: students, with: checkStudent(student:student), their: getStudentInfo(student:student), action: printStudent(str:""))
}







