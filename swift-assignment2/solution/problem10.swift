import Foundation

func union(a: [Int], b: [Int], c: [Int]) -> [Int] {
    let set1 = Set(a)
    let set2 = Set(b)
    let set3 = Set(c)

    return Array(set1.union(set2).union(set3))
}

let list1 = [1, 2, 3]
let list2 = [2, 3, 4, 5]
let list3 = [6]
let result = union(a: list1, b: list2, c: list3)
print("The union is: \(result)")