//
//  main.swift
//  BubbleSortimplementation
//
//  Created by Joyce Tao on 2022-10-20.
//

import Foundation

func waitForUserInput() {
    print("")
    print("Press return to continue...")
    // Waits for input from user, then discards it
    _ = readLine()
}

// Create an empty list (array)
var dataSet: [Int] = []

// Populate the list
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

// Print the list
print("Unsorted:")
print(dataSet)
waitForUserInput()

// Keep track of the number of integers in the list that may not be in the correct position
var numbersUnsorted = dataSet.count

// Loop through the entire array "n" times (however many times there are elements in the array)
for i in 0..<dataSet.count {
    
    // One pass through the array to float the highest number to the end
    for j in 0..<numbersUnsorted - 1 {
        
        // Compare left value to right value
        print("Comparison \(j + 1)...", terminator: "")
        if dataSet[j] > dataSet[j + 1] {
            
            // Swap values (when left value is more than right value)
            let temporaryValue = dataSet[j] // Set aside the left value
            dataSet[j] = dataSet[j + 1]     // Replace left with right
            dataSet[j + 1] = temporaryValue // Replace right with the temporary value
            print(" values were swapped.", terminator: "")
            
        }
        print("")
    }
    
    // Print the array after the pass
    print("Array after pass \(i + 1):")
    print(dataSet)
    waitForUserInput()
    
    // After each pass, at least one more number can be determined to be in the right position in the list
    numbersUnsorted -= 1
    
}

