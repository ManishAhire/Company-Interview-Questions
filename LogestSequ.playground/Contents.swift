import UIKit
//Given an array of positive integers. Find the length of the longest sub-sequence such that elements in the subsequence are consecutive integers, the consecutive numbers can be in any order.

// 3 4 5 15 = 3 4 5 = 3
// 8 9 17 18 19 16 = 16 17 18 19 = 4

/*
 let array = [8, 9, 17, 18, 19, 16]
 
 Sorted = [8, 9, 16, 17, 18, 19]
 
 
 
 */

func findLength(_ array: [Int]) -> Int {
    
    guard !array.isEmpty else {
        print("Array is empty")
        return 0
    }
    
    let sortedArray = array.sorted()
    var maxLength = 1
    var currentLength = 1
    
    for (index, num) in sortedArray.enumerated() {
        
        if index + 1 < sortedArray.count {
            if num == sortedArray[index+1] - 1 {
                currentLength += 1
            } else {
                maxLength = max(maxLength, currentLength)
                currentLength = 1
            }
        }
    }
    
    return max(maxLength, currentLength)
}

let array = [8, 9, 17, 18, 19, 16]
print(findLength(array))

