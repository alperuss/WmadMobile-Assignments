

import Foundation

class StudentCourses {
    var studentId:Int
    var courseId:String
    var mark:Int
    
    init(studentIdInit:Int, courseIdInit:String,markInit:Int){
        self.studentId=studentIdInit
        self.courseId=courseIdInit
        self.mark=markInit
    }
    func getMark()-> Int{
        return self.mark
    }
    
}
