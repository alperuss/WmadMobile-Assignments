import Foundation

func emptyDict() -> [String: [String]] {
    var dict: [String: [String]] = [:]
    for i in 65...90 {
        dict[String(UnicodeScalar(UInt8(i)))] = []
    }
    return dict
}

func getInput() -> [String: [String]] {
    var result: [String: [String]] = emptyDict()

    var word = ""
    repeat { 
        if !word.isEmpty { 
        
            let firstChar = String(word.prefix(1)).uppercased()
            if result[firstChar] != nil && !result[firstChar]!.contains(word){
                result[firstChar]!.append(word)
            }
        }
        print("Please enter the word (enter exit to finish the program): ")
        if let input = readLine() { 
            word = input
        } else { 
            break
        }
    } while word != "exit"

    return result
}

print(getInput())
