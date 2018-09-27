//
//  TipOne.swift
//  SwifterTips
//
//  Created by licheng on 2018/9/27.
//  Copyright © 2018年 licheng. All rights reserved.
//

import UIKit

// MARK: - @escaping 闭包的概念
func doWork(block: ()->()) {
    block()
}

func doWorkAsync(block: @escaping ()->()) {
    DispatchQueue.main.async {
        block()
    }
}

class S {
    
    var foo = "foo"
    
    func method1() {
        doWork {
            print(foo)
        }
        foo = "bar"
    }
    
    func method2() {
        doWorkAsync {
            print(self.foo)
        }
        foo = "bar"
    }
    
    func method3() {
        doWorkAsync {
            [weak self] in
            print(self?.foo ?? "nil")
        }
        foo = "bar"
    }
}

protocol P {
    func work(b: @escaping ()->())
}

class C: P {
    
    func work(b: @escaping () -> ()) {
        
        DispatchQueue.main.async {
            print("in C")
            b()
        }
    }
    
    //    func work(b: () -> ()) {
    //
    //    }
}

