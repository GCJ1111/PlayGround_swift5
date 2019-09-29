//: [Previous](@previous)

import Foundation

/** 结构体是值类型 **/

struct Rect4 {
    var width:Double
    var height:Double = 0.0
    func show() -> Void {
        print("width = \(width) height = \(height)")
    }
}

var r4 = Rect4(width: 10.0, height: 10.0)
var r5 = r4
print(r4)
print(r5)

/*
 赋值有两种情况
 1.指向同一块存储空间
 2.两个不同实例, 但内容相同
 */
r4.show()
r5.show()
r4.width = 20.0

// 结构体是值类型, 结构体之间的赋值其实是将r4中的值完全拷贝一份到r5中, 所以他们两个是不同的实例
r4.show()
r5.show()
