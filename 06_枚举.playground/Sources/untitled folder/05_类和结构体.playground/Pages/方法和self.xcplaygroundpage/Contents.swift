//: [Previous](@previous)

import Foundation


struct Rect_withMethod {
    var width:Double
    var height:Double = 0.0
    // 1.给结构体定义一个方法, 该方法属于该结构体
    // 2.结构体中的成员方法必须使用某个实例调用
    // 3.成员方法可以访问成员属性
    func getWidth() -> Double {
        return width
    }
    func getselfWidth() -> Double {
        return self.width
    }
    mutating func setselfWidth(x : Double)  {
        self.width = x
    }
    mutating func setWidth(x:Double) {
        self.width = (x)
        ////        return x
    }
}
var r6 = Rect_withMethod(width: 100, height: 200)
r6.width = 1

r6.getWidth()
r6.setWidth(x: 666)
r6.getWidth()

r6.getselfWidth

var r7 = Rect_withMethod(width: 301, height: 402)
r7.height
r7.width
//: [Next](@next)
