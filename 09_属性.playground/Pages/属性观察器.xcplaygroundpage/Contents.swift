
/*
 属性观察器,类似OC中的KVO, 可以用于监听属性什么时候被修改, 只有属性被修改才会调用
 有两种属性观察器:
 1.willSet, 在设置新值之前调用
 2.didSet, 在设置新值之后调用
 可以直接为除计算属性和lazy属性之外的存储属性添加属性观察器, 但是可以在继承类中为父类的计算属性提供属性观察器
 因为在计算属性中也可以监听到属性的改变, 所以给计算属性添加属性观察器没有任何意义
 */

class Line3{
    var start: Double = 0.0{
        willSet{
            print("willSet newValue = \(newValue)")
        }
        didSet{
            print("didSet oldValue = \(oldValue)")
        }
    }
    
    var end: Double = 0.0
}
var l = Line3()
l.start = 10.0


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


