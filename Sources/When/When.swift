//
//  When.swift
//
//
//  Created by jsilver on 2021/07/22.
//

infix operator ~>

@resultBuilder
public struct KVBuilder {
    public static func buildBlock<Key, Value>(_ components: (Key, Value)...) -> [Key: Value] {
        Dictionary(components) { first, _ in first }
    }
}

public func ~><Key, Value>(lhs: Key, rhs: Value) -> (Key, Value) {
    (lhs, rhs)
}

public func when<Key, Value>(_ key: Key, @KVBuilder _ builder: () -> [Key: Value]) -> Value? {
    builder()[key]
}
