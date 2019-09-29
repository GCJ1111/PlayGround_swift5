//: [Previous](@previous)

import Foundation

//: 定义和使用函数
//: 常规式定义

func add(x: Int, y: Int) -> Int {
    return x + y
}
var a = add(x: 1, y: 2)

//: 若有外部参数，则可以省略内部参数

func add_ext(_ x: Int, _ y: Int) -> Int {
    return x + y
}
var a1 = add_ext( 1000,2000)



let b = add(x: -1, y: -2)


//: ★变量式定义，也叫闭包表达式
var jiafa = { (x: Int, y: Int) -> Int in
    return x + y
}

jiafa(1,2)


//: [>](@next)
