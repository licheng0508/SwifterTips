//
//  TipThree.swift
//  SwifterTips
//
//  Created by licheng on 2018/9/29.
//  Copyright © 2018 licheng. All rights reserved.
//

// MARK: - 操作符

import UIKit

struct Vector2D {
    var x = 0.0
    
    var y = 0.0
}

func +(left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y + right.y)
}

func -(left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x - right.x, y: left.y - right.y)
}

func +*(left: Vector2D, right: Vector2D) -> Double {
    return left.x * right.x + left.y * right.y
}

// 添加操作符使用
precedencegroup DotProductPrecedence {
    associativity: none
    higherThan: MultiplicationPrecedence
}

infix operator +*: DotProductPrecedence
