//
//  SortingAlgorithmsTestCase.swift
//  
//
//  Created by Mac Van Anh on 8/15/20.
//

import XCTest
@testable import DataStructures

final class SortingAlgorithmsTestCase: XCTestCase {
    var testArray: [Int] = []
    let sortedArray = [3, 4, 9, 10]

    override func setUp() {
        testArray = [9, 4, 10, 3]
    }

    func test_bubbleSort() {
        bubbleSort(&testArray)
        XCTAssertEqual(sortedArray, testArray)
    }

    func test_selectionSort() {
        selectionSort(&testArray)
        XCTAssertEqual(sortedArray, testArray)
    }

    func test_insertionSort() {
        insertionSort(&testArray)
        XCTAssertEqual(sortedArray, testArray)
    }

    func test_mergeSort() {
        let sortedResult = mergeSort(testArray)
        XCTAssertEqual(sortedArray, sortedResult)
    }
}
