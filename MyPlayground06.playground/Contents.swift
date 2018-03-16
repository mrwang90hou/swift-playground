//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//Swift必包
/*
 闭包类似于结构块，可以在任何地方调用
 必包有些像函数
 函数是一个特殊的必包
 */

//下面是一个简单的例子：
let studname = { print("Welcome to Swift Closures") }
studname()
//1、以下闭包接受两个参数并返回一个商：     返回值类型  + in 是必包的关键字  +  必包要做的事情
let divide = {(val1: Int, val2: Int) -> Int in return val1 / val2 }
let result = divide(200, 20) //必包调用时不需要对应的写出函数参数
print (result)
/*
 Swift 标准库提供了sorted函数, 会根据您提供的排序闭包将已知类型数组中的值进行排序, 一旦排序完成, 函数会返回一个与原数组大小相同的新数组, 该数组中包含已经正确排序的同类型元素, 比如:
 */
 let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//比较字符串大小的函数
 func backwards(s1: String, s2: String) -> Bool { return s1 > s2 }    //降序排列
//数组的sorted排序方法        传递进去的参数是函数
 var reversed1 = names.sorted(by: backwards)
 print(reversed1)
//      by 外部参数    内部参数          （必包）参数类型是一个返回值为Bool的函数     sorted返回值为数组
//func sorted(by areInIncreasingOrder: (Element, Element) -> Bool) -> [Element]
//必包实现
var reversed2 = names.sorted(by: {(s1:String, s2:String) -> Bool in s1 > s2})  //return 可省略掉
 print(reversed2)
//使用必包
let sub = {(no1: Int, no2: Int) -> Int in return no1 + no2 }
let digits = sub(10, 20)
print(digits)
//简写参数的必包               0与1指的是必包中的参数
var reversed3 = names.sorted(by: {return $0 > $1})

print(reversed3)
//闭包作为操作函数
var reversed4 = names.sorted(by: >)
print(reversed4)


/*
 尾随必包
意义：
 （1）必包中逻辑的表达
 （2）编程的规范性
 （3）替换最后一个参数
 */


//闭包必须是参数列表的最后一个参数
//必包跟在函数名后面  便 识别必包为最后一个参数  （sorted目前只有一个参数）
var reversed6 = names.sorted
{(s1:String, s2:String) -> Bool in s1 > s2}
//如果参数有多个的情况下    括号不可省略
/*
var reversed7 = names.sorted(a:1,b:2)
{(s1:String, s2:String) -> Bool in s1 > s2}

//枚举（确定不变的）
let digitNames = [ 0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine" ]
let numbers = [16, 58, 510]
let strings = numbers.map    //跟在函数名称后面    称为尾随必包（必包中的第二种调用方式）
{
    (var number) -> String in var output = ""  //swift 3中不允许
    while number > 0
    {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}
print(strings) // 打印出来的结果: [OneSix, FiveEight, FiveOneZero]s
 */
//////////////////////////////////////////
//捕获                外部参数       内部参数    返回成   一个必包
func makeIncrementor(forIncrement amount: Int) -> () -> Int //这个是返回值    返回一个必包
{
    var runningTotal = 0
    func incrementor() -> Int
    { runningTotal += amount
        return runningTotal }
    return incrementor          // 本质上返回的是incrementor函数
}
//let incrementBySeven = makeIncrementor(forIncrement: 7)    //这是一个函数
//let a = incrementBySeven()
//print(a) // 打印出来的结果: 7
let incrementBySeven = makeIncrementor(forIncrement: 7)  //表示声明一个函数
let a = incrementBySeven()   //因为函数和闭包都是引用类型，指向同一个函数的指针
//传递的两种方式：（1）值传递（2）引用传递（指针传递）
let b = incrementBySeven()
let c = incrementBySeven()
print("\(a), \(b), \(c)") // 打印出来的结果: 7, 14, 21
let incrementByTen = makeIncrementor(forIncrement: 10)
let A = incrementByTen()
let B = incrementByTen()
let C = incrementByTen()
print("\(A), \(B), \(C)") // 打印出来的结果: 10, 20, 30

