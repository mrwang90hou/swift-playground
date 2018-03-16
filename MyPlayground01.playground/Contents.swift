//: Playground - noun: a place where people can play

import UIKit
//常量（swift语言中大量的存在常量<减少了大量数据的交换>）   没有分号（一行就是一条语句）
let tutorialTeam = 60
let editorialTeam = 17
let totalTeam = tutorialTeam + editorialTeam
//常量不能够被修改     tatalTeam++   已经在3.0中取消
//tatalTeam+=1  //报错
//变量（可变化的）
var TotalTeam = tutorialTeam + editorialTeam
/*
 *请尽可能的声明常量（使用let来声明一个常量，是最好的做法）
    自动识别变量类型
 */
var str = "Hello, playground"
 //自动识别变量类型, 也可以明确类型
var test = 10    //自动识别为Int类型
//test = 1.0
var test2 = 1.0    //自动识别为Double类型
test2 = 1    //变为Int类型
//字节变化：（8—>4）大内存兼容小空间
//（如果不明确类型，请让编译器推断类型并自动设置。这是比较好的做法）类型注释（显示说明类型）
let tutorialTeam2:Int = 60
/********************Swift基本类型和控制流**********/
//(1)float 和 Double
let a = 19.99
let b:Double = 19.99//存储内存按照十进制存储
//(2)Bools布尔值
let c = true
let d:Bool = false
//注意：⚠️(O-C中的值是YES和NO)
//(3)Strings
let string1 = "wang ning 1-1"
let string2 = "wang ning 1-2"
//o-c中需要"@"

//(4)if语句
if c  //取消小括号
{     //强制加上大括号
    print("\(a)王宁\(b)!");   //3.0中修改了println
}
else
{
    print("wangning");
}
//(5)数组和for语句
let array1 = [0,1,2,3,4,5]
let array2:[Double] = [1.1,1.2,1.3,1.4,1.5]
//[Double]是Array<Double>的快捷方式

/*c
for(int i=0;i<a.count;i++)
{
    
}
*/
/*
 java
 for(double item:possible)
 {
 }
*/
/*
 swift
 枚举
 */
for item in array1     //自定义变量item在array1数组中（对于这个数组中的每一个元素）
{
    print("wangning\(item)")
}
for i in 1...9
{
    print("\(i)wangning")
}
for i in 1..<9
{
    print(i)
}
for _ in 1..<9  //不需要用到计数器i，便用下划线"_"代替
{
    print("wangning");
}
//while 和 switch 语句与c语言的唯一变化区别就是：去掉小括号(while要注意⚠️)
var index = 1
switch index
{
case 1:
    print("wangning1")
    fallthrough
case 2,3:
    print("wangning2-3")
    fallthrough
default:
    print("print default!\n")
}


//类与方法
//class TipCalculator{
//    let total:Double //属性，必须赋初始值
//    let taxPct:Double
//    let subtotal:Double
//}

//函数
/*C函数
func plus(int x,int y)
{
    return x+y;
}
 plus(1,2);
 */
//Swift函数
func plus(x:Int,y:Int)->Int
{
    return x+y
}
plus(x:1,y:2) //必须说明赋值给谁
//没有返回值
func plus2(x:Int,y:Int)
{
    
}
plus2(x:1,y:0)
func plus3()->Int
{
    return 1
}
plus3()


let result = plus(x:2, y: 3)
print(result)
//不推荐（开销太大）
print(plus(x:2, y: 3))


func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
//greet(person:"Bob", day: "Tuesday")

//第二课时


//元组（变量的组合）
let http404Error = (404,"No found!")
print(http404Error)
print(http404Error.0,http404Error.1)
let (statusCode,statusMessage) = http404Error
//下划线的用途
// 省略不关心的元素
let (number,_) = http404Error

print(statusCode,statusMessage)
let StudentIformation:(String,String,Int) = ("wangning","男",22)
print(StudentIformation)
let (name,_,years) = StudentIformation

//元组的别名
let StudentIformation2 = (name :"wangning",sex:"男",old:22)
print("The student's StudentInformation is \(StudentIformation2.sex)")
print(StudentIformation2.sex)
//宏定义    type alias 类型别名
typealias Feet = Int
let aa:Feet = 2

//不允许强制类型转换（swift是强类型语言）
var varA = "This is a program!"
var varB = "+a"
var varC = varA + varB
var x = 1
var y = 2.0
//var z = x + y   ❌
var z2 = 1+1.1

//varA = (String)3.0  ❌
print(varA)


//水仙花数  如：1221，123321，1234321

func flower(m:Int)
{
    
}




/*下划线_的应用
（1）for
（2）元组
*/
let A = (0,1.0,"wangning")
let (_,_,number11) = A
////////////***********************//////////////////
//optionals（选配）类型，处理不存在的值，实质上是枚举（有限的集合）
let Str1:String = ""    //空字符串依然是个字符串
let Str2:String? = nil   //字符串为空（无初始化）不允许直接给String赋值为nil    加?   (选配类型)
//var myString:String? = nil
//强制解包
var myString:String?  //选配类型
var myString2:String?
myString = "wangning"
myString2 = "wangning!" /*自动解包(声明选配时候加！   来声明一种选配 */
if myString != nil {
    print(myString)   //⚠️字符串转换选配类型   
    print(myString!)   //解包后使用String类型
    print(myString2)
}else{
    print("myString has nil value")   //选配类型打印的时候会被包装（Optional）
}
//可选的绑定

var MyString:String? = nil   //选配类型可选为nil
/*(2)
 var MyString:String?        //选配类型不确定
 MyString = "wangning"       //变量赋值不为nil
 */
let yourString = MyString
if let yourString = MyString{   //比解包的方法，更有效率
    //动态绑定(nil的话是不能绑定的)结果有两种：flase和true   为nil赋值失败，不为nil赋值成功
    print("Your string has -\(yourString)")
}else{
    print("Your string does not have a value!")
}
//编码规则
//Unicode  和utf-8    gb2312

//字面量
let s1 = 12.1875
let s2 = 1.21875e1
let s3 = 0xC.3p0   //16进制的小数    p0  代表2的0次方
/*范围运算符
（a...b）   闭区间
（a..<b）
[?:]    三目运算符
*/

let i = 0
switch i {
case 0:
    print(0)
    fallthrough   //继续放下面走
case 1:
    print(1)
default:
    print("default")
}
//
let myArray:[String] = ["1","2","3"]
for item in myArray     //遍历某一个集合  自定义变量item在array1数组中（对于这个数组中的每一个元素）
{
    print("wangning\(myArray)")
    print(item)
}

/*不同类型如何相加*/
 let myArray2:[String] = ["1","2","3"]
 for item in myArray2     //遍历某一个集合  自定义变量item在array1数组中（对于这个数组中的每一个元素）
 {
 print("wangning\(myArray2)")
 print(item)
 }


//String字符串类型（不是基本数据类型）
//初始化方法
var stringName = String("wang ning")
var stringA = ""
var stringB = String()
var stringC:String? = nil   //选配类型
if stringA.isEmpty{   //无法判断nil是否
    print("stringA is empty")
}else
{
    print("stringA is not empty")
}
if stringB.isEmpty{   //无法判断nil是否
    print("stringA is empty")
}else
{
    print("stringA is not empty")
}
/*
if stringC.isEmpty{   //❌ 无法判断nil是否
    print("stringA is empty")
}else
{
    print("stringA is not empty")
}
*/
//🔗连接字符串

//stringName += "__Readers__"
print(stringA)
//字符串长度

//print(count(stringName))

/*
//字符串比较
if stringA == stringB
if stringA > sringB
*/

//获取某变量 UTF-8和UTF-16的编码
//网上传递数据多采用UTF—8传递
//unicodeSring.toI
