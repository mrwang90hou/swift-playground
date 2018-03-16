//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let array:[Int] = [2,2,3,4]
for i in array {
    print(i)
}

//3月27日
//数组和函数
var a:[Int] = []
//数组初始化
/*
 java
 String[] a = new String[10];
 */
var b:[String] = [String](repeating:"1",count:10)//数组的初始化函数3.0（参数固定存在）    初始化(重复的初始值，数组值的个数)
for i in b
{
    print("\r\(i)")
}
var aa:[Int] = [10,20,30]
aa[0]
var aaa = [Int](repeating:1,count:2)
print("aaa = \(aaa)")

//数组元素为元组组成的的数组
var c1 = [(1,2.2,"wangning"),(1,2.2,"lisi"),(1,2.2,"zhangsan")]
var c2:[(Int,String,Bool)] = [(1,"1",true),(2,"2",true),(3,"3",false),(4,"4",true)]
print("\(c1)\n\(c2)\n")
//var 数组可在其中进行：增，删，修改等操作，甚至增添数组
var someInts = [Int]()
//append方法（追加元素）
someInts.append(20)
someInts.append(30)
print(someInts)
//+  链接🔗新数组
someInts += [40]
print(someInts)
someInts = [10] + someInts
print(someInts)
var newArray = [0]
newArray += someInts
print(newArray)


//迭代／遍历数组

for item in newArray {
    print(item)
}
var someStrs = [String]()
someStrs.append("wangning")
someStrs.append("ningwang")

someStrs += ["zhangsan"]
//元组保存数组中的(下标，数值)
for (index,item) in someStrs.enumerated(){
    print("Value at index = \(index) is \(item)")
}
for item in someStrs.enumerated(){
    print("Value at index = \(item.0) is \(item.1)")
}
print(someStrs.count)//数组的长度
//someStrs.count = 4  //被保护的属性   java中属性一般都被藏起来
//空属性(isEmpty)
print(someStrs.isEmpty)//返回非空
//函数
func display(name:String)->String
{
    let a = "wangning"
    return a
}
display(name: "name")
//参数和返回值
func ls(array: [Int]) -> (large: Int, small: Int) {	//返回的是一个枚举类型
    var lar = array[0];var sma = array[0]
    for i in array[1..<array.count] {
        if i < sma {
            sma = i
        } else if i > lar {
            lar = i
        }
    }
    return (lar, sma)
}

//******************//

//函数中参数的传递默认为：值传递
//形参影响实参的传递方式：地址传递
/*函数返回值可以是一个：集合，元组，甚至还可以是个函数*/
//返回optional（选配）类型   的函数
/*
func minMax(array:[Int])->（min:Int,max:Int）
{
    return (1,2)
}

//动态绑定
if let bounds = minMax(array:[8,-6,2,109,3,71]){
    print("min is \(bounds.min)and max is \(bounds.max)")
}
*/
//返回Optional类型的函数
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
if let bounds = minMax(array:[8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

/*内部参数与外部参数
意义：
（1）(用外部参数来隐藏内部参数)
（2）标签：标明其数值意义的名字（知晓该数值的用处
 */

//泛型     不指明参数类型（接收任何类型的参数）

func vari1<N>(members:N){
    print(1)
}

//   不定数量的泛型          ...表示参数的个数可变
func vari3<N>(members:N...){
    for i in members {
        print(i)
    }
}
//不定数量的整型
func vari2(members:Int...){
    for i in members {
        print(i)
    }
}
vari1(members: 1)
print("分隔符01")
vari1(members: "wangning")
print("分隔符02")
vari3(members: 1)
print("分隔符03")
vari3(members: 1,2,3,4)
print("分隔符04")
vari3(members: "wangning")
print("分隔符05")
vari3(members: "wangning","liyu","zhangsan")
print("分隔符06")
vari2(members: 1,2,3,4)
print("分隔符07")
//io  参数    inout  只接收地址（c语言的指针）
//io参数     行参的任何操作都将影响实参
