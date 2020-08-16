//
//  PriorityQueueTestCase.swift
//  
//
//  Created by Mac Van Anh on 8/16/20.
//

import XCTest
@testable import DataStructures

final class PriorityQueueTestCase: XCTestCase {
    func test() {
        let priorityQueue = PriorityQueue(unsoertedInts, areSorted: <)
        XCTAssertEqual(priorityQueue.map { $0 }, unsoertedInts.sorted())
    }

    private let unsoertedInts = [12, 3, 4, 1, 7, 6, 8, 7]
}
