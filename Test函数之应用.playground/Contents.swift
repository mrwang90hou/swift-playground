//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


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
