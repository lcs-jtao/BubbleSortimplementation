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
//     _ = readLine()
}

// Create an empty list (array)
var dataSet: [Int] = []

// Populate the list
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

// Store the total time used for the trials
var totalTime = 0.0

// Allow for consecutive trials to occur
var trials = Int.random(in: 2...10)
for _ in 1...trials {
    
    var currentList = dataSet

    // Print the list
    print("Unsorted:")
    print(currentList)
    waitForUserInput()

    // Keep track of the start time (epoch)
    // When this line of code runs, startTime contains the number of seconds since January 1, 1970
    let startTime = Date().timeIntervalSince1970
    print("Starting sort...", terminator: "")
    
    // Loop through the entire array "n" times (however many times there are elements in the array)
    for i in 0..<currentList.count {
        
        // Keep track of whether a pair of numbers was swapped
        var swapped = false
        
        // One pass through the array to float the highest number to the end
        for j in 0..<currentList.count - 1 - i {
            
            // Compare left value to right value
            print("Comparison \(j + 1)...", terminator: "")
            if currentList[j] > currentList[j + 1] {
                
                // Swap values (when left value is more than right value)
                let temporaryValue = currentList[j] // Set aside the left value
                currentList[j] = currentList[j + 1]     // Replace left with right
                currentList[j + 1] = temporaryValue // Replace right with the temporary value
                print(" values were swapped.", terminator: "")
                
                // Note that a swap occured
                swapped = true
                
            }
            print("")
        }
        
        // Print the array after the pass
        print("Array after pass \(i + 1):")
        print(currentList)
        waitForUserInput()
        
        // When no swaps occured, stop the outer loop
        if swapped == false {
            break
        }
        
    }
    
    // Get end time (seconds since epoch)
    print("ended.")
    let endTime = Date().timeIntervalSince1970

    // Get the elapsed time
    let elapsedTime = endTime - startTime
    print("Sort took \(elapsedTime) seconds.")
    
    totalTime += elapsedTime
    
}
print("Average time for all trials is \(totalTime/Double(trials)) seconds.")
