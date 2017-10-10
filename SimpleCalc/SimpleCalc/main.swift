//
//  main.swift
//  SimpleCalc
//
//  Created by Su Wang on 2017/10/8.
//  Copyright © 2017年 Su Wang. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns:")
let userInput = readLine(strippingNewline: true)!

var userInputArray = userInput.characters.split(separator: " ").map(String.init)
var userInputConvertToNumbers:[Int] = []

for i in 0 ... userInputArray.count - 2{
    let newNumber = Int(userInputArray[i])
    userInputConvertToNumbers.append(newNumber!)
}

if (userInput.contains("count")){
    let count = userInputConvertToNumbers.count
    print("Result: \(count)")
}else if userInput.contains("avg"){
    var sum = 0
    for number in userInputConvertToNumbers{
        sum += number;
    }
    let avg = sum/(userInputConvertToNumbers.count)
    print("Result: \(avg)")
}else if userInput.contains("fact"){
    if(userInputConvertToNumbers.count>1){
        print("Only 1 number should be entered for calculating factorial!")
    }else{
        let givenNumber = userInputConvertToNumbers[0];
        var factResult = givenNumber;
        if(givenNumber == 1 || givenNumber == 0){
            print("Result: \(1)")
        }else{
            for i in (1...givenNumber-1) {
                factResult *= i
            }
            print("Result: \(factResult)")
        }
        
    }
    
    
}else{
    //UInt: an unassigned integer value type, init: create a integer from given string.
    let num1 = Double(UInt.init(userInput)!)
    let userSecondInput = readLine(strippingNewline: true)!
    let userThirdInput = readLine(strippingNewline: true)!
    let num2 = Double(UInt.init(userThirdInput)!)
    switch userSecondInput {
        case "+":
            let answer = num1 + num2
            print("Result: \(answer)")
        case "-":
            let answer = num1 - num2
            print("Result: \(answer)")
        case "*":
            let answer = num1 * num2
            print("Result: \(answer)")
        case "%":
            let answer = num1.truncatingRemainder(dividingBy: num2)
            print("Result: \(answer)")
        default:
            let answer = num1 / num2
            print("Result: \(answer)")
        
    }
    
}

