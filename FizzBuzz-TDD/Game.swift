//
//  Game.swift
//  FizzBuzz-TDD
//
//  Created by Miel on 3/9/2560 BE.
//  Copyright © 2560 Lumos. All rights reserved.
//

import Foundation

// challenge 1
class Game {
    var score: Int
    // challenge 7
    let brain: Brain
    
    init() {
        score = 0
        brain = Brain()
    }
    
    // challenge 3
    func play(move: String) -> Bool {
        /*score += 1 */
        // challenge 5
        /*return true */
        let result = brain.check(number: score + 1)
        
        if result == move {
            score += 1
            return true
        }else {
            return false
        }
    }
}
