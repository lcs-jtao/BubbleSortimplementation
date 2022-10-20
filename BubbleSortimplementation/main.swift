//
//  main.swift
//  BubbleSortimplementation
//
//  Created by Joyce Tao on 2022-10-20.
//

import Foundation

// Create an empty list (array)
var dataSet: [Int] = []

// Populate the list
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

// Print the list
print(dump(dataSet))
