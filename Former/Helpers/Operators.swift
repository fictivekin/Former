//
//  Operators.swift
//  Former-Demo
//
//  Created by Ryo Aoyama on 7/24/15.
//  Copyright © 2015 Ryo Aoyama. All rights reserved.
//

import UIKit

infix operator =? {
associativity right
precedence 90
assignment
}

func =?<T> (inout lhs: T, rhs: T?) {
    
    rhs.map { lhs = $0 }
}

func =?<T> (inout lhs: T?, rhs: T?) {
    
    rhs.map { lhs = $0 }
}

func =?<T> (inout lhs: T!, rhs: T?) {
    
    rhs.map { lhs = $0 }
}