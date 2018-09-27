//
//  TipTwo.swift
//  SwifterTips
//
//  Created by licheng on 2018/9/27.
//  Copyright © 2018年 licheng. All rights reserved.
//

import UIKit

// MARK: - Optional Chaining

class Toy {

    let name: String
    
    init(name: String) {
        self.name = name
    }
    
}

class Pet {
    var toy: Toy?
    
}

class Child {
    
    var pet: Pet?

}

extension Toy {
    
    func play() {
        print("play")
    }
}


