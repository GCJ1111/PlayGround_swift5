//: [Previous](@previous)

import Foundation

/*
 转换为基本数据类型
 OC:
 NSString *str = @"250";
 NSInteger number = [str integerValue];
 NSLog(@"%tu", number);
 */
var str10 = "250A"
// 如果str不能转换为整数, 那么可选类型返回nil
// str = "250sd", 不能转换所以可能为nil
var numerber:Int? = Int(str10)
///处理方法1:
if numerber != nil
{
    print(numerber!) // 2.0可以自动拆包,3.0以后则不会
}
else{
    print("numerber is nil")
}
///处理方法2:

print(numerber ?? 333)

///处理方法3:
if let num = numerber{
    print("num has value = \(num)")
}
else{
    print("\"if let\" process result = nil")
}

guard let num = numerber else{
    print("\"if let\" process result = nil")
}
//else{
//    print("num has value = \(num)")
//}

//: [Next](@next)
