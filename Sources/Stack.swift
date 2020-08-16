//
//  Stack.swift
//  
//
//  Created by Mac Van Anh on 8/15/20.
//

struct Stack<Element: Equatable>: Equatable {
    private var storage: [Element] = []

    init() {}

    init(_ elements: [Element]) {
        storage = elements
    }

    var isEmpty: Bool {
        return peek() == nil
    }

    func peek() -> Element? {
        return storage.last
    }

    mutating func push(_ element: Element) {
        storage.append(element)
    }

    @discardableResult
    mutating func pop() -> Element? {
        return storage.popLast()
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        return storage
            .map { "\($0)" }
            .joined(separator: " ")
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
