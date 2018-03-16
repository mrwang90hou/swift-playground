//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



//属性监视器

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet
        {
            if totalSteps > oldValue
            {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360
stepCounter.totalSteps = 896



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
