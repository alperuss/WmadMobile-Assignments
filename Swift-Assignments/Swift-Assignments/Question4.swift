
import Foundation
class Question4 {
    func solution4(){
        print("Please enter your first nam")
          let input1 = readLine()
          print("Please enter your last name")
          let input2 = readLine()
          if let firstName = input1, let lastName = input2 {
            print("Hi \(firstName) \(lastName), I hope you are doing well!")
          }

    }
}
