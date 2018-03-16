//: Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground"
/* 
 下标：类似数组
 
 给结构体一种特殊的访问方式
 */

struct TimesTable {
    let multiplier: Int
    //下标     index不能够更改为其他写法
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimesTable = TimesTable(multiplier: 3)
print(threeTimesTable)
print("six times three is \(threeTimesTable[6])") // 打印 "six times three is 18"

class daysofaweek
{
    private var days = ["sunday","monday","tuesday","wednesday","thuisday","friday","saturday"]
    subscript(index:Int,index2:String)->String
    {
        if days[index] == index2
        {
            return days[index]
        }
        else
        {
            return "error!"
        }
    }
}
var p = daysofaweek()
print(p[1,"2"])


//定义一个基类
class Vehicle {                             //父类（爷爷类） ：自行车
    var style:String = "Vehicle"
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise(hasNoise:Bool) {
        // 什么也不做-因为车辆不一定会有噪音
        print("这是父类的方法！")
        if hasNoise {
            print("有噪音！")
        }
        else
        {
            print("没有噪音！")
        }
    }
}
let someVehicle = Vehicle()
someVehicle.style = "someVehicle"
someVehicle.makeNoise(hasNoise:true)
print("\(someVehicle.style): \(someVehicle.description)")
// 打印 "Vehicle: traveling at 0.0 miles per hour"
class Bicycle: Vehicle {                    //子类（爸爸类）：自行车
    var hasBasket = false
}
//子类继承了父类所有的属性和方法     （继承）
let bicycle = Bicycle()
bicycle.style = "bicycle"
bicycle.hasBasket = true
bicycle.makeNoise(hasNoise:false)
bicycle.currentSpeed = 25
print("\(bicycle.hasBasket): \(bicycle.description)")
// 打印 "Bicycle: traveling at 15.0 miles per hour"aa
class BrokenBicycle: Bicycle {         //子类的子类(孙子类)：自行车
    var isBroken:Bool = false
}
let brokenBicycle = BrokenBicycle()
brokenBicycle.style = "brokenBicycle"
brokenBicycle.makeNoise(hasNoise:false)
brokenBicycle.currentSpeed = 0.0
print("\(brokenBicycle.style): \(brokenBicycle.description)")

//重写父类中的特性
class Bicycle2: Vehicle {         //子类的子类(孙子类)：自行车
    var isBroken:Bool = false
    override func makeNoise(hasNoise:Bool)
    {
         print("这是子类的方法！")
         super.makeNoise(hasNoise: false)
    }
}
let bicycle2 = Bicycle2()
bicycle2.makeNoise(hasNoise: false)
//属性的重写


//防止重写
//前面加：final


struct Size
{
    var rectangle:String = "Test"
    var width = 0.0,height = 0.0
    /*如果没有init方法，将会报错
    let twoByTwo = Size(width:1.5,height:2.0)将会报错
     因为没有init方法时，默认其存在
 */
    init(width:Double,height:Double) {
        self.width = width
        self.height = height
    }
}
let twoByTwo = Size(width:1.5,height:2.0)
/*Swift 访问控制
 (1)Public      公开的
 (2)          protect
 (3)Private     私有的
 
 Swift 3.0中新加的
 （1）fileprivate
 （2）openprivate
*/

/*
    xcode的使用
    UI view视图的使用
    控件的使用
    网络的使用
    多线程的使用
社交分享的设计
 */
