//
//  Graph.swift
//  
//
//  Created by Mac Van Anh on 8/16/20.
//

protocol Graph {
    associatedtype Element

    typealias Edge = GraphEdge<Element>
    typealias Vertex = Edge.Vertex

    var vertices: [Vertex] { get }

    @discardableResult
    mutating func addVertex(_: Element) -> Vertex

    func getEdges(from: Vertex) -> [Edge]
}


struct GraphVertex<Element> {
    let index: Int
    let element: Element
}

extension GraphVertex: Hashable where Element: Hashable {}

extension GraphVertex: Equatable where Element: Equatable {}


struct GraphEdge<Element> {
    typealias Vertex = GraphVertex<Element>

    let source: Vertex
    let destination: Vertex
    let weight: Double
}

extension GraphEdge: Equatable where Element: Equatable {}
