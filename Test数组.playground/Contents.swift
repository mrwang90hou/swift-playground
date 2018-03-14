//: Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground"
/*
 swift数组学习
1、创建数组
 (1)数组的声明与初始化
 (2)数组的访问
 */
//（1）数组初始化(数组中的元素类型必需一致，区别于元组)    此处加链接🔗：到元组
let someArray : [Int] = [1,2,3,4]
for item in someArray {
    print(item)
}
var word  = ["A","E","I","O","U"]
for item in word {
    print(item)
}
/*
 java语言中是这样的：
 String[] a = new String[10];
 */
var b:[String] = [String](repeating:"1",count:10)//数组的初始化函数3.0（参数固定存在）    初始化(重复的初始值，数组值的个数)
//数组的类型： [Int] 或者 Array<Int>
var numbers1: [Int] = [0,1,2,3,4,5]
var numbers2: Array<Int> = [0,1,2,3,4,5]
// 空数组
//如果是空数组要指明数组类型
var emptyArray1:[Int] = []
var emptyArray2:Array<Int> = []
var emptyArray3 = [Int]()
var emptyArray4 = Array<Int>()
// 创建具有默认值的数组(相同元素的数组)
//下面例子表示创建具有5个元素并初始值均为0的数组
var allZeros = Array<Int>(repeating: 0, count: 5)
//结果：[0,0,0,0,0]
var allZeros2 = [Int](repeating: 0, count: 4)
//结果：[0,0,0,0]
let someInts = [Int](repeating:0,count:3)
//结果：[0,0,0]
//数组元素为元组组成的的数组（数组中的每一个元素类型依然一致，均为元组，元组中的元素类型可以不一致）
var c1 = [(1,2.2,"wangning"),(1,2.2,"lisi"),(1,2.2,"zhangsan")]
var c2:[(Int,String,Bool)] = [(1,"1",true),(2,"2",true),(3,"3",false),(4,"4",true)]
var c3 = [(Int,String,Bool)](repeating:(1,"1",true),count:3)
var c4 = Array<(Int,String,Bool)>(repeating:(1,"1",true),count:3)
print("\(c1)\n\(c2)\n\(c3)\n\(c4)")
//(2)访问数组
//定义一个字符串数组
let someString:[String] = ["wangning","liyu","wangyu"]
print("Value of first element is \(someString[0])")
print("Value of first element is \(someString[1])")
print("Value of first element is \(someString[2])")

/*
 2、数组的常用方法（对数组的常用操作）
 */
//（1）获取数组的长度
var num1 = [Int](repeating:2,count:2)
var num2 = [Int](repeating:1,count:3)
var num3 = num1 + num2    //数组直接衔接相加
print("\(num1)的长度为：\(num1.count)")
print("\(num2)的长度为：\(num2.count)")
print("\(num3)的长度为：\(num3.count)")
//(2)修改数组
//var 数组可在其中进行：增，删，修改等操作，甚至增添数组
var somInts = [Int]()
somInts.append(20)
print(somInts)
somInts.append(30)
print(somInts)
//+  链接🔗新数组   数组前后均可以连接
somInts += [40]
print(somInts)
somInts = [10] + somInts
print(somInts)
var newArray = [0]
newArray += somInts
print(newArray)
newArray[0] = 1//修改指定元素
print(newArray)
//判空(空属性)
print("somInts is empty ? = \(somInts.isEmpty)")
print("emptyArray1 is empty ? = \(emptyArray1.isEmpty)")
// 获取元素
somInts[2]
//修改数据中的一组数据
var a = [1,2,3,4,5]
a[0...3] = [1,1,1,1]
print("a = \(a)")
a[0...3] = [2]   //把1-4位上的元素替换成一个：2
print("a = \(a)")
//区间删除操作
var aa = [Int](repeating:0,count:10)
var bb:[String] = ["0","1","2","3","4","5","6","7","8","9","10"]
for item in 1...10 {
    aa[item-1] = item
}

print("aa = \(aa)")
//bb.removeSubrange(0..<4)
//print("bb = \(bb)")
bb.removeSubrange(0..<10)
print("bb = \(bb)")
bb.removeAll()
print("bb = \(bb)")
// 数组越界是一个严重的错误
//vowels[-1]
//vowels[5]
// 获取第一个元素和最后一个元素，返回的是可选型
somInts.first
somInts.last   //.first和.last的返回值都为可选型
emptyArray1.first
if let firstsomInts = somInts.first{
    print("The first vowel is \(firstsomInts)")
}
somInts.first!
somInts[somInts.count-1]
// 获取最小，最大值
somInts.min()
somInts.max()
// 使用范围
let numbers = ["1","2","3","4","5"]
numbers[2..<4]
numbers[2..<numbers.count]  //[3,4,5]
// 包含
numbers.contains("2")
numbers.contains("6")
let letter = "1"
if numbers.contains( letter ){
    print("\(letter) is a number")
}
else{
    print("\(letter) is not a number")
}
numbers.index(of: "4")  //获取索引(位置)，返回值为可选型
if let index = numbers.index(of: "4"){
    print("4 is a numbers in position \(index+1).")
}
else{
    print("4 is not a numbers.")
}
// 遍历／迭代数组
for number in numbers{
    print(number)
}
//元组保存数组中的(下标，数值)    遍历数组枚举
for (index, item) in numbers.enumerated(){
    //遍历数组索引和元素
    print("\(index+1): \(item)")
}
//swift3.0 中将枚举属性enumerate 修改为enumerated()方法
for item in numbers.enumerated(){
    print(item)
}

for (n, c) in "Swift".characters.enumerated() {
    print("\(n): '\(c)'")
}
// Prints "0: 'S'"
// Prints "1: 'w'"
// Prints "2: 'i'"
// Prints "3: 'f'"
// Prints "4: 't'"

var s = ["foo", "bar"].enumerated()
print(s)
////////////////(offset: 0, element: "1")
//元组item保存数组numbers中的(下标，数值)
for item in numbers.enumerated(){
    print("Value at index = \(item.0) is \(item.1)")
}
// 比较
var oneToFive = [1,2,3,4,5]
newArray == oneToFive  //false
print("newArray = \(newArray)")
var oneToFive2 = [1, 10, 20, 30, 40]
newArray == oneToFive2  //true
////swift 3.0之前数组是有序的数据集合，swift 3.0后为无序
let array1 = [1.1, 33, "hahah"] as [Any]
// Any任意类型
let array2:Array<Any> = [1.2, 34, "hahahah"]
let array3 = [Any](repeating:(1,"1",true),count:3)
print(array1)
print(array2)
print(array3)
/*
 3、二维数组

 */
var board = [ [1024,16,2,0] , [256,4,2,0] , [64,2,0,0] , [2,0,0,0] ]
var board1:[[Int]] = [ [1024,16,2,0] , [256,4,2,0] , [64,2,0,0] , [2,0,0,0] ]
var board2:[Array<Int>] = [ [1024,16,2,0] , [256,4,2,0] , [64,2,0,0] , [2,0,0,0] ]
var board3:Array<[Int]> = [ [1024,16,2,0] , [256,4,2,0] , [64,2,0,0] , [2,0,0,0] ]
var board4:Array<Array<Int>> = [ [1024,16,2,0] , [256,4,2,0] , [64,2,0,0] , [2,0,0,0] ]
print("\(board1)\n\(board2)\n\(board3)\n\(board4)\n")
// 二维数组获取元素
board[0]
board[0][0]
// 获取二维数组两个维度的信息
board.count
board[0].count
// Swift中的二维数组，每一维度的元素数目可以不同
board[0].append(0)
print(board)
// 为二维数组的第一个维度添加的元素是一个数组
board.append([0,0,0,0])
board += [ [0,0,0,0] ]
print(board)






//获取数组中最大值最小值的函数
//Swift实现的快速排序及sorted方法的对比
func getMaxAndMix(nums:[Int])->(max:Int,min:Int){
    var max = nums[0]
    var min = nums[0]
    //遍历nums数组，找出其中最大值和最小值
    for num in nums {
        if num > max {
            max = num
        }
        if num < min {
            min = num
        }
    }
    //返回一个元组作为该函数的2个返回值
    return (max,min)
}
/*  对数组进行排序的函数
 （1）冒泡排序
 （2）
*/

var nums = [20,100,-21,200,30,39,-2,213]
var maxAndmin = getMaxAndMix(nums: nums)
print("最大值为：\(maxAndmin.max),最小值为：\(maxAndmin.min)")

//比较数组大小的函数
func backwards(s1: Int, s2: Int) -> Bool { return s1 > s2 }    //降序排列
//数组的sorted排序方法        外部参数     传递进去的参数是函数
var reversed1 = nums.sorted(by: backwards)    //函数参数
//public func sorted(by areInIncreasingOrder: (Element, Element) -> Bool) -> [Element]
print(reversed1)
