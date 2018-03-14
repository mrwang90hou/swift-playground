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
//（如果不明确类型，请让编译器推断类型并自动设置。这是比较好的做法）
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
//宏定义
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


/********************（1）高斯的计算**********************/
//1+2+3+...+99+100
var sum = 0

func sumNumber(n:Int)->Int{
    var sum = 0
    for i in 1...n{
        sum+=i
    }
    
    return sum
}
print("1+2+3+...+49+50 = \(sumNumber(n: 50))")
print("1+2+3+...+99+100 = \(sumNumber(n:100))")
for i in 1...100 {
    sum += i
}
print("1+2+3+...+99+100 = \(sum)")
pow(10,4)


/********************（2）水仙花数**********************/
//水仙花数  如：121，12321，1234321
var judge:Bool = true
//自定义产生新的水仙花数
func creatFlowerNumber(centerNumber:Int)->Int
{
    let long = (centerNumber*2-1)
    var firstHalfNumber = 0
    var endHalfNumber = 0
    for _i in 1...centerNumber {
        firstHalfNumber = firstHalfNumber*10 + _i
        print(firstHalfNumber)
    }
    
    let times = centerNumber
    for _i in 1...centerNumber-1 {
        endHalfNumber = (centerNumber - _i) + endHalfNumber * 10
        //times-=1
        print(endHalfNumber)
    }
    //采用乘方的扩大方法失败
//    //let number = firstHalfNumber *
//        print(pow(10,4))
//        var number = firstHalfNumber * pow(10,4)
    
    for _ in 1...long-times {
        firstHalfNumber = firstHalfNumber*10
        print(firstHalfNumber)
    }
    
    let number = firstHalfNumber + endHalfNumber
    //+ endHalfNumber
    return number
}
// 判断水仙花数是否正确
func judgeFlowerNumber(number:Int)->Bool
{
    var newNumber = 0
    var chageNumber = number
    print("调用函数：judgeFlowerNumber判断水仙花数是否正确")
    for _ in 1...getNumberofDigits(number: number){
        let temp = chageNumber%10
        print(temp)
        chageNumber = chageNumber/10
        print(chageNumber)
        newNumber = (newNumber + temp) * 10
        print(newNumber)
    }
    if newNumber/10 != number
    {
        return false
    }
    else
    {
        return true
    }
}
//获取数字的数位
func getNumberofDigits(number:Int)->Int
{
    var i = 0
    var changeNumber = number
    //ssa
    while changeNumber != 0
    {
        i+=1
        changeNumber /= 10;
        print(changeNumber)
    }
    print("该数字为\(i)位数")
    return i
}
let Number = creatFlowerNumber(centerNumber: 5)
judge = judgeFlowerNumber(number:Number)
if judge
{
    print("\(Number)是水鲜花数!!!")
}
else
{
     print("\(Number)不是水鲜花数!!!")
}
