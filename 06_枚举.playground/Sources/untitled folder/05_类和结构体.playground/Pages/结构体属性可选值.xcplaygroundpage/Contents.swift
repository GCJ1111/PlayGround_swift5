//: [Previous](@previous)

import Foundation


struct Rect_WithIniValue {
    var width: Double = 0.0
    var height:Double = 0.0
    var optional_width :Int?
}
print("start exxcution")
/// This is docu, press option+command+/
// 如果结构体的属性有默认值, 可以直接使用()构造一个结构体,option 的变量可以不初始化

var deafault_rect = Rect_WithIniValue()
deafault_rect.height
deafault_rect.optional_width
deafault_rect.optional_width = 3
deafault_rect.optional_width


//var deafault_rect_with_type_declear : Rect_WithIniValue = Rect_WithIniValue()

//var optional_Rect : Rect_WithIniValue?
var optional_Rect = Rect_WithIniValue(width: 33.3, height: 44.4, optional_width : 22)
optional_Rect.optional_width = 55
optional_Rect.optional_width
if let optional_width = optional_Rect.optional_width{
    print(optional_width)
}
else{
    print("optional_width  is nil")
}
optional_Rect.optional_width!

//oRect!.width = 80

print("end exxcution")

//: [Next](@next)
