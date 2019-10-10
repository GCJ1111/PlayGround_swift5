
/*
 类属性
 在结构体和枚举中用static
 在类中使用class, 并且类中不允许将存储属性设置为类属性
 */
struct Person5 {
    //普通的属性是每个对象的一份
    var name: String = "hjq"
    //类属性是所有对象共用一份
    static var gender: String = "Man"
    // age 是一个计算属性
    static var age: Int{
        return 25
    }
    func show()
    {
        print("gender = \(Person5.gender) name = \(name)")
    }
}
var p5 = Person5()
//print("gender = \(p5.gender)")  Error!

Person5.gender = "women"

print("p5 gender = \(Person5.gender)")

var p6 = Person5()
// 类属性是所有对象共用一份
print("p6 gender = \(Person5.gender)")
p5.show()

//可以将计算属性设置为类属性
print("age = \(Person5.age)")


class Person6 {
    //普通的属性是每个对象一份
    var name: String = "hjq"
    //类中不允许将存储属性定义为类属性
//    class var gender: String = "man"   Error!
    //类中只能将计算属性定义为类属性
    class var age: Int {
        return 26
    }
    func show() {
        print("age = \(Person6.age)")
    }
}
var p7 = Person6()
print("p7 age = \(Person6.age)")
p7.show()


