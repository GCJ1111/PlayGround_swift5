//: [Previous](@previous)

import Foundation

var optValue5: Int? = 55
var optValue6: Int? = 66


/// 单个option变量,可以赋值给另一个option变量
var result1_wo_issueMark: Int? = optValue5

/// 单个option变量,可以赋值给另一个option变量,同时有运算, error: value of optional type 'Int?' must be unwrapped to a value of type 'Int'
//var result4_wo_issueMark: Int? = optValue5 + 11

/// 单个option变量,可以赋值给另一个普通变量, error: value of optional type 'Int?' not unwrapped; did you mean to use '!' or '?'?
//var result2_wo_issueMark: Int = optValue5

/// 两个option变量,binary operator '+' cannot be applied to two 'Int?' operands
//var result3_wo_issueMark: Int? = optValue5 + optValue6



/// 推断变量(无强制声明) = 可选值 ，OK
var result1_wo_issueMark = optValue5

/// 可选值 = 可选值 ，OK
var result1_w_QMark: Int? = optValue5


/// 可选值unwapp后，赋值给 普通变量，OK
var upwapped_Value5: Int = optValue5!

/// 可选值没有uprap前，，用type(of:)显示的是Optinal<Int>.Type
/// 其实是一个 String.Type 类型？此处理解不对
type(of:optValue5)
print(optValue5 )
print(optValue6 )
print(optValue6 , optValue5 )

/// 未经upwapp的可选值，不能进行数

//error: value of optional type 'Int?' not unwrapped; did you mean to use '!' or '?'?
//var opt_add_result = optValue5 + optValue6


/// upwapp的可选值，才可以进行数学运算

upwapped_Value5 += 5
upwapped_Value5 += optValue5!

/// option变量,自身的更新
optValue5 = 77 + 11
/// option变量,与其他变量的运算,必须先要upwapped
optValue6 = optValue5! + 11


//: [Next](@next)

