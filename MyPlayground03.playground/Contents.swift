//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*函数的嵌套
（将一个函数作为一个参数传递到另一个函数中去，实现一个函数可以调用多个函数）
 函数的目的：灵活的使用
使用函数类型作为返回值
 */
func sum(a: Int, b: Int) -> Int
{ return a + b }
//变量的名称作为返回函数
//定义一个addition函数 将sum的地址赋给它   （指向一个函数的指针）
var addition: (Int, Int) -> Int = sum
print("Result: \(addition(40, 89))")
//作为函数的参数类型   （1、函数参数   2、行参  3、行参）
func another(addition: (Int, Int) -> Int, a: Int, b: Int)
{ print("Result: \(addition(a, b))") }
another(addition: sum, a: 10, b: 20)
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
// 函数作为返回值
func addTen(x: Int) -> ((Int) -> Int){
    func getNum(num2: Int) -> Int{
        return num2 + x
    }
    return getNum
}
var x = addTen(x: 10)
print(x(20))

// 函数作为参数

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool{
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool{
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

// 返回Tuple（元组）的函数

func getTuple(arr: [Int]) -> (max: Int, min: Int, avg: Float, sum: Int)?{
    if arr.count == 0{
        return nil
    }
    var max: Int = arr[0]
    var min: Int = arr[0]
    var avg: Float = 0
    var sum: Int = arr[0]
    var index = 0
    for item in arr{
        index += 1
        if item > max{
            max = item
        }
        if item < min{
            min = item
        }
        sum += item
    }
    avg = Float(sum / index);
    return (max, min, avg, sum)
}
var arr = [9, 0, 11, 3, -5, -13, 99, 30]
if let result = getTuple(arr: arr){
    print("max: \(result.max), min: \(result.min), avg: \(result.avg), sum: \(result.sum)")
}

// 可变参数
func sum(nums: Int...) -> Int{
    var sum = 0;
    for item in nums{
        sum += item
    }
    return sum
}
var x = sum()
var y = sum(9, 10)
var z = sum(nums: 1, 5, 9)
// 函数嵌套
func fifteen() -> Int{
    var x = 10
    func addFive(){
        x += 5
    }
    addFive()
    return x
}
var a = fifteen()
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%