//
//  SortingAlgorithms.swift
//  
//
//  Created by Mac Van Anh on 8/15/20.
//


// ----------------------------------------------------------------------------
// MARK: - Bubble Sort
// ----------------------------------------------------------------------------

func bubbleSort<Element: Comparable>(_ array: inout [Element]) {
    // There is no need to sort the collection if it has less than 2 elements
    guard array.count >= 2 else {
        return
    }

    for end in (1..<array.count).reversed() {
        var swapped = false

        for current in 0..<end {
            if array[current] > array[current + 1] {
                array.swapAt(current, current + 1)
                swapped = true
            }
        }

        // If no values were wapped this pass, the collections must be sorted
        if !swapped {
            return
        }
    }
}


// ----------------------------------------------------------------------------
// MARK: - Selection Sort
// ----------------------------------------------------------------------------

func selectionSort<Element: Comparable>(_ array: inout [Element]) {
    // There is no need to sort the collection if it has less than 2 elements
    guard array.count >= 2 else {
        return
    }

    for current in 0..<(array.count - 1) {
        var lowest = current

        for other in (current + 1)..<array.count {
            if array[lowest] > array[other] {
                lowest = other
            }
        }

        if lowest != current {
            array.swapAt(lowest, current)
        }
    }
}

// ----------------------------------------------------------------------------
// MARK: - Insertion Sort
// ----------------------------------------------------------------------------

func insertionSort<Element: Comparable>(_ array: inout [Element]) {
    // There is no need to sort the collection if it has less than 2 elements
    guard array.count >= 2 else {
        return
    }

    for current in 1..<array.count {
        for shifting in (1...current).reversed() {
            if array[shifting] < array[shifting - 1] {
                array.swapAt(shifting, shifting - 1)
            } else {
                break
            }
        }
    }
}

// ----------------------------------------------------------------------------
// MARK: - Merge Sort
// ----------------------------------------------------------------------------

func mergeSort<Element: Comparable>(_ array: [Element]) -> [Element] {
    guard array.count > 1 else {
        return array
    }

    let middle = array.count / 2
    let left = mergeSort(Array(array[..<middle]))
    let right = mergeSort(Array(array[middle...]))

    return merge(left, right)
}

func merge<Element: Comparable>(_ left: [Element], _ right: [Element]) -> [Element] {
    var leftIndex = 0
    var rightIndex = 0
    var result: [Element] = []

    while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]
        if leftElement < rightElement {
            result.append(leftElement)
            leftIndex += 1
        } else if (leftElement > rightElement) {
            result.append(rightElement)
            rightIndex += 1
        } else {
            result.append(leftElement)
            leftIndex += 1
            result.append(rightElement)
            rightIndex += 1
        }
    }

    if leftIndex < left.count {
        result.append(contentsOf: left[leftIndex...])
    }

    if rightIndex < right.count {
        result.append(contentsOf: right[rightIndex...])
    }

    return result
}
