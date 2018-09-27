//
//  LLViewController.swift
//  SwifterTips
//
//  Created by licheng on 2018/9/27.
//  Copyright © 2018年 licheng. All rights reserved.
//

import UIKit

class LLViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        
        let s = S()
        s.method1()
        s.method2()
        s.method3()
        
    }
}

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
