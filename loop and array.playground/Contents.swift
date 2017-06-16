//: Playground - noun: a place where people can play

import UIKit

var str : [String] = []
var dou : [Double] = [234.1,1231.2,123.55,12312.6666]
var sdf : [Any] = [123,"sdf",234.6666,"sdf2",99.99]

str.append("sawadee")
str.append("sawadee krub")

print(str)

str.remove(at: 0)

print(str)

dou.removeAll()

print(dou)

//==========================================
// ========== Loop ==============
var oddNumber : [Int] = []

for i in (0 ..< 100) where i % 2 == 0 {
    oddNumber.append(i)
}


var sums : [Int] = []
for num in oddNumber {
    sums.append(num + 5)
}

var x = 0
repeat {
    print("The sum is:\(sums[x])")
    x = x+1
} while x < sums.count