//: Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground"
//枚举，结构体  和  类
/*
 1、枚举
 枚举的功能：
 （1）枚举在swift也类似于C和Objective C中结构类型
 （2）在一个类中声明，其值是通过该类的实例来访问的
 （3）初始成员值是用枚举初始化定义的
 （4）扩展确保标准的协议功能
*/
//枚举的定义enumeration
//定义为星期天的枚举(枚举的名称首字母大写)
enum WeekDay{
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}
//或者
enum DaysofaWeek
{case Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday}
//swift中枚举可以不赋初始值
enum names
{
    case Swift    //空值
    case Closures  //枚举的名称首字母大写
    case Object_C
}
var lang = names.Closures
lang = .Swift   //是枚举成员，不是枚举成员的值
//枚举与switch语句
switch lang
{
    case .Swift: print("Welcome to Swift!")
    fallthrough
    case .Closures: print("welcome to Closures!")
    default: print("Introduction!")//默认情况
}

enum Climate
{case India,America,Africa,Australia}
var season = Climate.Africa
season = .America
switch season {
    case .India:
        print("Climate is hot")
    case .America:
        print("Climate is Cold")
    case .Africa:
        print("Climate is Moderate")
    case .Australia:
        print("Climate is Rainy")
    fallthrough     //无条件向下执行
    default:
        print("Climate is not predictable")
}

//枚举与关联值
enum Student
{
    //每个枚举成员设定一个或多个关联值
    case Name(String)
    case Mark(Int,Int,Int)
    case Scores(String,Int,Bool)
    case Parents(String,String)
}
var studDetails:Student = .Name("liyu")
//print(studDetails.name)  ❌错误
var studMarks = Student.Mark(98,97,95)
var studentScores = Student.Scores("wangning", 100, true)
let studentParents = ("father","monther")
switch studMarks
{
    //如果所有的枚举成员的关联值的提取为常数，或者当所有被提取为变量，
    //为了简洁起见，可以放置一个 var 或 let 标注在成员名称前
    case .Name(let studName): print("Student name is: \(studName).")
    case .Mark(let Mark1, let Mark2, let Mark3): print("Student Marks are: \(Mark1),\(Mark2),\(Mark3).")
    case .Scores(let studentName,let studentPersonalScoures,let studentScoresIsReal): print("StudentScores are \(studentName),\(studentPersonalScoures),\(studentScoresIsReal)")
    fallthrough
    default: print("Nothing")
}
//print(studMarks.Mark1)   ❌错误
//取出枚举中的单个元素之值
// 带原始值的定义格式
enum WeekDays: String{
    
    case Monday = "星期一"
    
    case Tuesday = "星期二"
    
    case Wednesday = "星期三"
    
    case Thursday = "星期四"
    
    case Friday = "星期五"}

var day = WeekDays.Monday
print(day.rawValue + "真好！") // 星期一好！ 在这种情况下每个成员值的原始值都必须定义！
enum Seasons:String{
    case spring = "Spring"
    case summer = "Summer"
    case autumn = "Autumn"
    case winter = "Winter"
}
let seas1 = Seasons.spring.rawValue
var seas2 = Seasons.spring
// 获取枚举成员的原始值         ⚠️区别：   成员值、原始值（符号所代表的内容）、哈希值
print("member成员值 = spring(成员值仅仅是一组抽象的符号)\nhashValue哈希值 = \(seas2.hashValue)\nrawValue原始值 = \(seas2.rawValue)")
// 找到一个特定的原始值枚举成员
print(seas2.rawValue + " season")
//原始值可以是字符串，字符，或任何整数或浮点数类型。每个原始值必须在其枚举声明中是唯一的。当整数用于原始值，如果指定的一些枚举成员没有任何值，它们会自动递增。
enum Month: Int      //只有Int类型的支持原始值推断
{
    case January = 1, February, March, April, May, June, July, August, September, October, November, December }
    let yearMonth = Month.May.rawValue
    print("Value of the Month is: \(yearMonth).")

enum SeasonClimate:String
{
    case India = "Climate is Hot"
    case America = "Climate is Cold"
    case Africa = "Climate is Moderate"
    case Australia = "Climate is Rainy"
}
let myFavoriteSeason = "Spring"
switch myFavoriteSeason {
    case Seasons.spring.rawValue:
        print("My favorite season is \(Seasons.spring.rawValue)")
    default:
        print("nothing!")
}


/*
2、结构体
（1）创建时赋初始值
（2）调用时赋初始值
（3）初始化函数赋初值
init()
{
}
*/
struct MarksStruct
{
    var mark : Int,name : String      // 默认初始化函数
   // var <#name#> = <#value#>
    init(mark:Int,name:String)      //初始化函数
    {   if mark >= 100{
            self.mark = mark*10
            self.name = name
        }
        else
        {
            self.mark = mark*100
            self.name = name+"!"
        }
    }
}
let marks = MarksStruct(mark:90,name:"wangning")   //调用初始化方法init   进行初始化
print(marks)
/*
 结构体最佳的使用方式：
 1、封装简单时数据
 2、使用“值”而不是“引用”复制封装数据到它的 相关联属性
 3、结构体为“复制”和“引用”
 在swift中，结构体使用其成员的值，而不是它的引用
 */
var mark1 = MarksStruct(mark:100,name:"wangning")
var mark2 = mark1
print("\(mark2.mark),\(mark2.name)")
mark2.mark = 1100
print(mark2)

/*
 3、类
 （A）使用类的好处：
     （1）继承获得一个类的属性到其他类
     （2）类型转换使用户能够在运行时检查类的类型
     （3）初始化期，需要处理释放内存资源
     （4）引用计数允许类实例有一个以上的参考
 （B）类与结构体的共同点：
     （1）定义属性用于存储值
     （2）定义方法用于提供功能
     （3）定义下标用于下标语法访问值
     （4）定义初始化器，用于生成初始化
     （5）通过扩展用于增加默认实现的功能
     （6）符合协议以对某类提供标准功能（协议）
 （C）与结构体相比，类还有如下附加功能：
     （1）继承，允许一个类继承另一个类的特征
     （2）类型转换允许在运行时检查和解释一个类实例的类型
     （3）取消初始化器，允许一给类实例释放任何其所分配的资源
     （4）引用计数允许对一个类的多次引用
 PS：结构体总是通过被复制的方式在代码中传递，因此请不要使用引用计数
*/
//定义一个类
class MarksStruct1
{
    var mark: Int
    init(mark: Int) { self.mark = mark } //被隐藏
}
//类与struct的声明区别
class studentMarks1
{   var mark:Int
    init(mark:Int) {
        self.mark = mark
    }
}
struct studentMarks2
{   let mark : Int}

//类传递值，比较时
let marks1 = studentMarks1(mark:300)
let marks2 = marks1   //指向这个类的指针在传递，只有一个存储位置
print(marks1 === marks2)        //比较两个对象本身
print(marks1)
print(marks2)
print(marks1.mark)
print("Marks1.mark is \(marks1.mark)")
print("Marks2.mark is \(marks2.mark)")
//结构体传递值，比较时    注意⚠️
let marks3 = studentMarks2(mark:200)
let marks4 = marks3   //struct中是值传递
//print(marks3 == marks4)    // == 比较两个基本数据类型
print(marks3.mark == marks4.mark)
print(marks3)
print(marks4)
/*
                               类标识符
 等同运算符           使用的操作符是 (===)           当两个常量或变量指向同一个实例返回true
不相同操算符          使用的操作符是 (!==)           当两个常数或变量指向一个不同的实例返回true
 */

/*  知识扩充：
 java中
 int x;
 Integer.parse()
 Integer x = new Integer(10)
 Integer 类   int是其简称
 
 String 大写的原因：
 String就是其本身的全称，   //它是个方法
 */

class SampleClass: Equatable    	//与c++相同的继承方法       继承了一个：可以比较值相等的类型    的方法
/*      Equatable类
public protocol Equatable {
    
    /// Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func ==(lhs: Self, rhs: Self) -> Bool
}
*/
{
    let myProperty: String
    init(s: String) { myProperty = s }
}
///比较两个基本对象类型值的函数
func ==(lhs: SampleClass,rhs: SampleClass) -> Bool
{
    return lhs.myProperty == rhs.myProperty  //比较两个基本对象类型的值
}
let spClass1 = SampleClass(s: "Hello")
let spClass2 = SampleClass(s: "Hello")
print("spClass1.myProperty == spClass2.myProperty ?  is \(spClass1==spClass2)")
//print(==(lhs:spClass1,rhs:spClass2))
//let bool = ==(one:spClass1,two:spClass2)
// "==="的函数方法    func ===(lhs: AnyObject?, rhs: AnyObject?) -> Bool
spClass1 === spClass2 // false              //比较两个对象本身
print("\(spClass1)")
// "!=="的函数方法   func !==(lhs: AnyObject?, rhs: AnyObject?) -> Bool
spClass1 !== spClass2 // true
print("\(spClass2)")



struct LevelTracker {
    static var highestUnlockedLevel = 1      //
    var currentLevel = 1    //当前音量🔊
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }
    static func isUnlocked(_ level: Int) -> Bool {   //检测音量是否大于
        return level <= highestUnlockedLevel
    }
    @discardableResult
    mutating func advance(to level: Int) -> Bool {      //传递进来的🔊与之前🔊相比较
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        } }
}
class Player {
    var tracker = LevelTracker()
    let playerName: String
    func complete(level: Int) {     //音量追踪器
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    init(name: String) {
        playerName = name
    }
}
var player = Player(name: "Argyrios")
player.complete(level: 1)
print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)") // 打印 "highest unlocked level is now 2"
player = Player(name: "Beto")
if player.tracker.advance(to: 6) {
    print("player is now on level 6")
} else {
    print("level 6 has not yet been unlocked")
}
// 打印 "level 6 has not yet been unlocked"

/*
 类型方法
 */
class SomeClass {
    var x = 1
    static var y = 2
    class func someTypeMethod(Outpara IntPara:Int) {
        //如果外部方法不命名，必须要用内部方法
        /*作业
         1、调用时，究竟是 内部参数 还是 外部参数    ：   外部参数
         2、如果，用  "_"  外部参数不想要时，应该如何处理   ： 放在外部参数位置
 */
        // 在这里实现类型方法 }
        print("abc")
    }
}
SomeClass.someTypeMethod(Outpara:1)
//
let someclass = SomeClass()
someclass.x = 11
//someclass.so
//类的名称去访问y














class myClass{
    var x = 11
    func myMethod(_ para:Int) {
        print("using that someMethod")
    }
}
let myclass = myClass()
myclass.myMethod(10)
