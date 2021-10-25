//
//  func.swift
//  Swiftme-FirestApp
//
//  Created by Ян Кшецкий on 24.10.2021.
//

import Foundation

func arrayByCount(_ a:Int) -> [Int] {
    return Array(repeating: 0, count: a)
}

func calc(_ a:[Int], _ c: String?) -> Int {
    switch c! {
    case "/":
        return a.reduce(a[0]*a[0], /)
    case "*":
        return a.reduce(1, *)
    case "+":
        return a.reduce(0, +)
    case "-":
        return a.reduce(a[0]*2, -)
    case "^":
        return Int(Array(repeating: a[0], count: a[1]).reduce(1, *))
    default:
        return 0
    }
}
