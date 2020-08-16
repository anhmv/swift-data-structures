//
//  BinarySearchTestCase.swift
//  
//
//  Created by Mac Van Anh on 8/15/20.
//

import XCTest
@testable import DataStructures

final class BinarySearchTestCase: XCTestCase {
    func test_binarySearch() {
        let array = [1, 5, 8, 32, 33, 33, 47, 49, 502]
        XCTAssertEqual(array.binarySearch(for: 5), 1)
    }
}
