import Foundation

func getInput() -> [String] {
    var list: [String] = []

    print("Please enter a word: ", terminator: "")
    var query = readLine()

    while query != nil && !query!.isEmpty {
        if !list.contains(query!) {
            list.append(query!)
        }

        print("Please enter a word: ", terminator: "")
        query = readLine()
    }

    return list
}

let result = getInput()
print("the result list is: \(result)")