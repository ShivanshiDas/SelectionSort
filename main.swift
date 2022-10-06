

// Add your code below:

import Foundation
var words = [String]()

var line = readLine()
while line != nil && line != "" && line != " " {
    words.append(line!)
    line = readLine()
}
var pass = 0
var swap = 0
var swapTotal = 0


print("Pass: \(pass), Swaps: \(swap)/\(swapTotal), Array: \(words)")
for i in 0..<words.count-1{ //for every element except for the last element
    var minIndex = i
    swap = 0 // reset swap before inner for loop 
    for x in i+1..<words.count { // for every element after the sorted elements
        if words[x] < words[minIndex] { // if the current minIndex is greater than any of the elements following it
            // note - compare x to minIndex and not i because i changes every rotations while minIndex is the current minimum index
            minIndex = x // update the minIndex
        }
    } // minimum index for each element in unsortedInt has been found

    words.swapAt(i, minIndex) // swap - bring the smallest element to the front
    pass += 1 // iterate through each element in the outside loop
    swap += 1
    swapTotal += 1
    print("Pass: \(pass), Swaps: \(swap)/\(swapTotal), Array: \(words)")

}

        
