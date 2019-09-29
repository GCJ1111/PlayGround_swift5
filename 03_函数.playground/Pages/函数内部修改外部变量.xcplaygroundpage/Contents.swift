//: [Previous](@previous)

import Foundation
// 定义一个文件级别的字符串
var external_str = "EXT_string"


func add(x: Int, y: Int) -> Int {
//    文件级别的字符串可以在函数内部，被访问到
    print("函数内部print,修改前:",external_str)
    
    external_str = "文件级别的字符串可以在函数内部被修改"
    print("函数内部print,修改后:",external_str)

    return x + y
}
//print(external_str)
print("调用函数:add")

var a = add(x: 1, y: 2)
//: [Next](@next)

print("函数外部print,这里的external_str已经在函数add中被修改成为了新的值,\"\(external_str)\"")
