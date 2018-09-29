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
        
        // MARK: - @escaping 闭包的概念
//        let s = S()
//        s.method1()
//        s.method2()
//        s.method3()
//
        // MARK: - Optional Chaining
        
//        let xiaoming = Child()
//
//        if let toyName = xiaoming.pet?.toy?.name {
//            print(toyName)
//        }
//
//        xiaoming.pet?.toy?.play()
//
//
//        if let _: () = playClosure(xiaoming) {
//            print("好开心~")
//        }else {
//            print("没有玩具可以玩:(")
//        }
        
        // MARK: - 操作符
        
        let v1 = Vector2D(x: 2.0, y: 3.0)
        let v2 = Vector2D(x: 1.0, y: 4.0)
        
        let v4 = v1 +* v2
        
        print(v4)
        
    }
}





