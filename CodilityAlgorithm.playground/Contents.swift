//: Playground - noun: a place where people can play

import UIKit


// BinaryGap

var N = 1041

let s = String(N, radix: 2)

var m = 0
var counter = 0

while N > 0 {
    
    if N % 2 == 0 {
        counter += 1
    }else{
        m = max(m, counter)
        counter = 0
    }
    
    N = N / 2
    
}

print(m)

// ARRAYS

// Rotate Array Position

//extension RangeReplaceableCollectionType where Index : BidirectionalIndexType {
//    
//    mutating func rotateArray(nPositions: Int) {
//        for _ in 1...nPositions {
//            insert(self.removeLast(), atIndex: startIndex)
//        }
//    }
//}
//
//public func solution(inout A : [Int], _ K : Int) -> [Int] {
//    // write your code in Swift 2.2 (Linux)
//    
//    A.rotateArray(K)
//    return A
//}

extension RangeReplaceableCollectionType where Index : BidirectionalIndexType {
    mutating func rotateArray(nPositions: Int) {
        if self.count.hashValue >= 0 && nPositions > 0 && !self.isEmpty{
            for _ in 1...nPositions {
                insert(self.removeLast(), atIndex: startIndex)
            }
        }
    }
}

var ar : Array<Int> = [2,3,4]

ar.rotateArray(2)
print(ar)


// OddOccurrencesInArray

public func solution(inout A : [Int]) -> Int {
    
//    if A.count > 0 {
//        A = Array(Set(A.filter({ (i: Int) in A.filter({ $0 == i}).count == 1})))
//        return A.last!
//    }
//    return 0
    
    return A.reduce(0, combine: ^)
    
}

var br  : Array<Int>  = [999,990,999,989,2,3,4]
solution(&br)

br


// Array Equi

func findEquilibriumIndex(array: [Int]) -> Int? {
    var leftSum = 0
    var rightSum = array.reduce(0, combine: +)
    
    
    for (index, value) in array.enumerate() {
        rightSum -= value
        
        if leftSum == rightSum {
            return index
        }
        
        leftSum += value
    }
    
    return nil
}

let sampleArray : Array <Int> = []

findEquilibriumIndex(sampleArray)