

import Foundation
class Question2 {
    func solution2(){
        print("Please enter X1")
          let inputX1 = readLine()
          print("Please enter X2")
          let inputX2 = readLine()
          print("Please enter X3")
          let inputX3 = readLine()
          print("Please enter X4")
          let inputX4 = readLine()
          if let stringX1 = inputX1, let stringX2 = inputX2, let stringX3 = inputX3, let stringX4 = inputX4 {
            if let x1 = Double(stringX1), let x2 = Double(stringX2), let x3 = Double(stringX3), let x4 = Double(stringX4) {
              print("Result: \(max(x1, x2, x3, x4) - min(x1, x2, x3, x4) + pow(x1, x2) + abs(x3 - x4))")
            }
          }
    }
}
