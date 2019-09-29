//: Playground - noun: a place where people can play

import Foundation

//
//  main.swift
//  结构体
//
//  Created by 韩俊强 on 2017/6/12.
//  Copyright © 2017年 HaRi. All rights reserved.
//


/*
 结构体:
 结构体是用于封装不同或相同类型的数据的,
 Swift中的结构体是一类类型, 可以定义属性和方法(甚至构造方法和析构方法等)
 */

/*
 定义一个结构体
 格式:
 struct 结构体名称 {
 结构体属性和方法
 }
 */

struct Rect_WithIniValue {
    var width: Double = 0.0
    var height:Double = 0.0
}
// 如果结构体的属性有默认值, 可以直接使用()构造一个结构体
// 如果结构体的属性没有默认值, 必须使用逐一构造器实例化结构体

var deafault_rect = Rect_WithIniValue()

// 结构体属性访问 语法
deafault_rect.width
deafault_rect.height

// 结构体属性操作 语法
deafault_rect.width = 99.9
deafault_rect.height = 120.5
print("默认的初始值：width = \(deafault_rect.width), height = \(deafault_rect.height)")

/*
 结构体构造器
 Swift中的结构体和类跟其它面向对象语言一样都有构造函数, 而OC是没有的
 Swift要求实例化一个结构体或类的时候,所有的成员变量都必须有初始值, 构造函数的意义就是用于初始化所有成员变量的, 而不是分配内存, 分配内存是系统帮我们做的.
 如果结构体中的所有属性都有默认值, 可以调用()构造一个结构体实例
 如果结构体中的属性没有默认值, 可以自定义构造器, 并在构造器中给所有的属性赋值
 其实结构体有一个默认的逐一构造器, 用于在初始化时给所有属性赋值
 */

struct Rect2 {
    var width:Double
    var height:Double = 0.0
}
// 逐一构造器
var r1 = Rect2(width: 10.0, height: 10.0)
// 错误写法1: 顺序必须和结构体中成员的顺序一致
//var r1 = Rect2(height: 10.0, width: 10.0) // Error!
// 错误写法2: 必须包含所有成员
//var r1 = Rect2(width: 10.0)  //Error!

// 错误写法3: 必须包含所有成员,同时包含参数名，不能只输入参数值
//var r1_2 = Rect2(10.0,  10.0)
//error: 99_misc.playground:55:16: error: missing argument labels 'width:height:' in call


/*
 结构体中定义成员方法
 在C和OC中结构体只有属性, 而Swift中结构体中还可以定义方法
 */

struct Rect3 {
    var width:Double
    var height:Double = 0.0
    // 1.给结构体定义一个方法, 该方法属于该结构体
    // 2.结构体中的成员方法必须使用某个实例调用
    // 3.成员方法可以访问成员属性
    func getWidth() -> Double {
        return width
    }
}

var r2 = Rect3(width: 10.0, height: 10.0)
//结构体中的成员方法是和某个实例对象绑定在一起的, so, 谁调用, 方法中访问的属性就是谁
// 取得r2这个对象的宽度
r2.getWidth()
print(r2.getWidth())

var r3 = Rect3(width: 50.123, height: 30.678)
// 取得r3这个对象的宽度
r3.getWidth()
print(r3.getWidth())




