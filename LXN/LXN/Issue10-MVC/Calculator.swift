//
//  Calculator.swift
//  LXN
//
//  Created by Macbook on 3/8/26.
//

import Foundation

final class Calculator {
    static func plus(_ a: Int, _ b : Int) -> Int {
        let result = a+b
        return (result)
    }
    static func minus(_ a: Int, _ b : Int) -> Int {
        return(a-b)
    }
    static func multiply(_ a: Int, _ b : Int)-> Int {
        return(a*b)
    }
    static func divide(_ a: Int, _ b : Int)->Float {
        let result = Float(a)
        let result2 = Float(b)
        let result3 = result/result2
        return(result3)
        
    }
}
