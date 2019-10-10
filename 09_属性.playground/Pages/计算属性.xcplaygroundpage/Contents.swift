/*
 计算属性
 1.Swift中的计算属性不直接存储值, 跟存储属性不同, 没有任何的"后端存储与之对应"
 2.计算属性用于计算, 可以实现setter和getter这两种计算方法
 3.枚举不可以有存储属性, 但是允许有计算属性
 setter 对象.属性 = 值
 getter var value = 对象.属性
 */

struct Rect {
    var origion:(x: Double, y: Double) = (0, 0)
    var size:(w: Double, h: Double) = (0, 0)
    
    // 由于center的值是通过起点和宽高计算出来的, 所以没有必要提供一个存储属性
    var center:(x: Double, y:Double){
        
        get{
            return (origion.x + size.w/2, origion.y + size.h/2)
        }
        
        set{
            // 注意: 计算属性不具备存储功能, 所以不能给计算属性赋值, 如果赋值会发生运行时错误
            // 注意: setter可以自己传递一个参数, 也可以使用系统默认的参数newValue
            // 如果要使用系统自带的参数, 必须删除自定义参数
            origion.x = newValue.x - size.w / 2
            origion.y = newValue.y - size.h / 2
        }
    }
}
var r = Rect()
r.origion = (0, 0)
r.size = (100, 100)
//r.center = ((r.origion.x + r.size.w) / 2, (r.origion.y + r.size.h) / 2)    // 可以直接在结构体中获得, 此处可以省略
print("center.x = \(r.center.x) , center.y = \(r.center.y)")
r.center = (100, 100)
print("origion.x = \(r.origion.x) , origion.y = \(r.origion.y)")
print("center.x = \(r.center.x) , center.y = \(r.center.y)")


/*
 只读计算属性
 对应OC中的readonly属性, 所谓的只读属性就是只提供了getter方法, 没有提供setter方法
 */
class Line2 {
    var start: Double = 0.0
    var end: Double = 0.0
    
    // 只读属性, 只读属性必须是变量var, 不能是常量let
    // 比如想获取length, 只能通过计算获得, 而不需要外界设置, 可以设置为只读计算属性
    var leghth: Double {
        //只读属性可以省略get{}
//        get{
            return end - start
//        }
    }
}
var line2 = Line()
line2.end = 100
print(line2.length)
