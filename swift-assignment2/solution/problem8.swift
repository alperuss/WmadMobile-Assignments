import Foundation

func buildDict(num: Int) -> [Int: [Int]] {
    var result: [Int: [Int]] = [:]

    for i in 2...9 {
        for j in i...num {
            if j % i == 0 {
                if result[i] == nil {
                    result[i] = []
                }

                result[i]!.append(j)
            }
        }
    }

    return result
}

print("Please ente ra number which is greater than 50: ", terminator: "")
if let input = readLine(), let inputInt = Int(input), inputInt > 50 { 
    let result = buildDict(num: inputInt)
    print(result)
} else { 
    print("invalid number!")
}