//
//  StackTestCase.swift
//  
//
//  Created by Mac Van Anh on 8/15/20.
//

import XCTest
@testable import DataStructures


final class StackTestCase: XCTestCase {
    var stack = Stack<Int>()

    override func setUp() {
        stack.push(1)
        stack.push(2)
        stack.push(3)
        stack.push(4)
    }

    func test_push() {
        XCTAssertEqual(stack.description, "1 2 3 4")
    }

    func test_pop() {
        XCTAssertEqual(stack.pop(), 4)
    }

    func test_peek() {
        XCTAssertEqual(stack.peek(), 4)
    }

    func test_isEmpty() {
        XCTAssertFalse(stack.isEmpty)
    }

    func test_initWithArray() {
        let array = [1, 2, 3, 4]
        XCTAssertEqual(stack, Stack(array))
    }

    func test_initWithArrayLiteral() {
        let stack: Stack = [1, 2, 3]
        XCTAssertEqual(stack, [1, 2, 3])
    }
}
