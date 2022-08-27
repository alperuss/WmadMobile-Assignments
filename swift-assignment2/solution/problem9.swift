import Foundation

func findSingleNumber(list: [Int]) -> Int? {
    if list.isEmpty {
        return nil
    }

    var dict: [Int: Int] = [:]

    for item in list {
        dict[item] = dict[item] == nil ? 1 : 2
    }

    print(dict)
    for key in dict.keys { 
        if dict[key] == 1 { 
            return key
        }
    }
    return nil
}

let list = [ 1, 2, 1, 2, 4]
if let single = findSingleNumber(list: list) { 
    print("The single number is: \(single)!")
} else { 
    print("Couldn't find the single number!")
}