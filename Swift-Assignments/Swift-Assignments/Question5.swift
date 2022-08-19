
import Foundation
class Question5 {
    func solution5(){
        print("Please enter number1")
          let inputNumber1 = readLine()
          print("Please enter number2")
          let inputNumber2 = readLine()
          print("Please enter number3")
          let inputNumber3 = readLine()
          if let stringN1 = inputNumber1, let stringN2 = inputNumber2, let stringN3 = inputNumber3 {
            if let n1 = Int(stringN1), let n2 = Int(stringN2), let n3 = Int(stringN3) {
                var max = abs(n1 - n2)
                var min = abs(n1 - n2)
                if max < abs(n1 - n3) {
                  max = abs(n1 - n3)
                }
                if max < abs(n2 - n3) {
                  max = abs(n2 - n3)
                }
                if min > abs(n1 - n3) {
                  min = abs(n1 - n3)
                }
                if min > abs(n2 - n3) {
                  min = abs(n2 - n3)
                }
              print("Max: \(max)")
              print("Min: \(min)")
            }
          }
    }
}
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
