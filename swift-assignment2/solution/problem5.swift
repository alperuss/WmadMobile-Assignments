
import Foundation

func isSubset(firstList: [Int], secondList: [Int]) -> Bool {
    let firstSet = Set(firstList)
    let secondSet = Set(secondList)
    return firstSet.isSubset(of: secondSet)
}

let list1 = [1, 2, 3, 4]
let list2 = [1, 2, 3, 4, 5]
let list3 = [3, 4]

print("Is list 1 subset of list 2: \(isSubset(firstList: list1, secondList: list2))")
print("Is list 2 subset of list 3: \(isSubset(firstList: list2, secondList: list3))")
