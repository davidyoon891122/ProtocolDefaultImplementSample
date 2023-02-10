//
//  Stackable.swift
//  ProtocolDefaultImplementationSample
//
//  Created by jiwon Yoon on 2023/02/10.
//

import Foundation

protocol Stackable {
    // 프로토콜을 채택하는 데이터 타입이 Generic일 경우 사용
    associatedtype item
    
    var items: [item] { get set }
    
    mutating func add(item: item)
}

// protocol default
extension Stackable {
    mutating func add(item: item) {
        items.append(item)
    }
}

struct Stack<T>: Stackable {
    var items: [T]
    
    typealias item = T
}


