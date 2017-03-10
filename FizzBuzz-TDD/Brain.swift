//
//  Brain.swift
//  FizzBuzz-TDD
//
//  Created by Miel on 3/9/2560 BE.
//  Copyright © 2560 Lumos. All rights reserved.
//

import Foundation

class Brain {
    func isDivisibleByThree(number: Int) -> Bool {
        /*return number % 3 == 0 */
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    // challenge 3
    func isDivisibleByFive(number: Int) -> Bool {
        /*return number % 5 == 0 */
        // challenge 6
        return isDivisibleBy(divisor: 5, number: number)
    }
    
    // challenge 5
    func isDivisibleByFifteen(number: Int) -> Bool {
        /*return number % 15 == 0 */
        // challenge 6
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        // refactor divisible code
        return number % divisor == 0
    }
    
    func check(number: Int) -> Move { // part 6 - challenge 5
        // challenge 7
        /*return "Fizz" */
        // challenge 9, 11
        if isDivisibleByFifteen(number: number) {
            return .fizzBuzz //"FizzBuzz"
        }else if isDivisibleByThree(number: number) {
            return .fizz //"Fizz"
        }else if isDivisibleByFive(number: number) {
            return .buzz //"Buzz"
        }else {
            // challenge 13
            return .number //"\(number)"
        }
    }
}
