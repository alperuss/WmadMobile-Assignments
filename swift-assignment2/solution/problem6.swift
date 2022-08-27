import Foundation

func sum(list: [Int]) -> Int { 
    var result = 0
    for item in list { 
        result += item
    }
    return result
}

func readNumbersAndReturnSum() -> Int? { 
    var numberList: [Int] = []
    var number = 0
    repeat { 
        print("Please enter the number and 0 to exit: ")
        if let input = readLine(), let inputInt = Int(input) { 
            number = inputInt
            numberList.append(number)
        } else { 
            break
        }
    } while number != 0
    return sum(list: numberList)
}


if let result = readNumbersAndReturnSum() { 
    print("The sum is: \(result)")
}