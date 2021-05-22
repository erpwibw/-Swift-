//
//  main.swift
//  3.11.1 Collatz 序列
//
//  Created by Chen on 2021/5/20.
//

//  编写一个名为collatz()的函数，它有一个名为number的参数。
//  如果参数是偶数，那么collatz()就打印出number//2，并返回该值。
//  如果number是奇数，collatz()就打印并返回3*number+1。

//  然后编写一个程序，让用户输入一个整数，并不断对这个数调用collatz()，直到函数返回值１

//  记得将input()的返回值用int()函数转成一个整数，否则它会是一个字符串。

import Foundation

func askInput() -> Int {
    var result:Int? = nil
    
    while result == nil {
        let input = readLine()!
        result = Int(input)
        if result != nil {
            break
        } else {
            print("输入错误字符，请输入数字：")
        }
    }
    
    return result!
}


func collatz(input number: Int) -> Int {
    var number = number
    if number % 2 == 0 {
        number = number / 2
        print( number )
    } else {
        number = 3 * number + 1
        print( number )
    }
    return number

}

print("请输入数字：")
var number = askInput()

while number != 1 {
    number = collatz(input: number)
}
