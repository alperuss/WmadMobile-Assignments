
import Foundation

func isPartiallySorted(list: [Int]) -> Bool {

    for i in 0..<list.count {
        var updatedList = list
        updatedList.remove(at: i)
        if updatedList == updatedList.sorted() {
            return true
        }
    }

    return false
}

let list1 = [1, 2, 3, 4, 9, 6, 7]
let list2 = [1, 2, 3, 4, 9, 3, 8, 6]

print("Is list 1 partially sorted: \(isPartiallySorted(list: list1))")
print("Is list 2 partially sorted: \(isPartiallySorted(list: list2))")