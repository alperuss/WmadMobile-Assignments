import Foundation

func isSorted(list: [String]) -> Bool {
    return list == list.sorted()
}

let list1 = ["b", "d", "c", "e", "a"]
let list2 = list1.sorted()

print("Is list 1 sorted: \(isSorted(list: list1))")
print("Is list 2 sorted: \(isSorted(list: list2))")
