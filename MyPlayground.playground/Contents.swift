//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/**
 
 数组元素的访问  和在数组中插入或者增加元素
 
 */
var array1 = ["a", "b", "c"]
// 不能越界
print(array1[1])
print("------------>")
// 尾部添加
array1.append("44")
array1=array1+array1
print(array1)
print("------------>")
// 也不可以越界
array1.insert("yy", at: 0)
print(array1)

print(array1[1])
print("------------>")
var cookers01 = ["煮","炒","蒸","焖","烧","蜜汁","涮","炖","卤"]//9种做法

for _ in 1...2 {
    cookers01=cookers01+cookers01
    print(cookers01)
}
let cookers = cookers01
print(cookers01)