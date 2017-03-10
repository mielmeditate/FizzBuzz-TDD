//
//  FizzBuzzVCUnitTests.swift
//  FizzBuzz-TDD
//
//  Created by Miel on 3/10/2560 BE.
//  Copyright © 2560 Lumos. All rights reserved.
//

import XCTest
@testable import FizzBuzz_TDD

class FizzBuzzVCUnitTests: XCTestCase {
    
    var fizzBuzzVC: FizzBuzzVC!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        fizzBuzzVC = storyboard.instantiateViewController(withIdentifier: "FizzBuzzSID") as! FizzBuzzVC
        UIApplication.shared.keyWindow!.rootViewController = fizzBuzzVC
        
        _ = fizzBuzzVC.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
 
    func testMove1IncrementScore() {
        fizzBuzzVC.play(move: .number) // part 6 challenge 7
        let newScore = fizzBuzzVC.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore() {
        fizzBuzzVC.play(move: .number) // part 6 challenge 7
        fizzBuzzVC.play(move: .number) // part 6 challenge 7
        let newScore = fizzBuzzVC.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(fizzBuzzVC.game)
    }
    
    // challenge 3
    func testFizzIncrementScore() {
        fizzBuzzVC.game?.score = 2
        fizzBuzzVC.play(move: .fizz) // part 6 challenge 7
        let newScore = fizzBuzzVC.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    // challenge 3
    func testBuzzIncrementScore() {
        fizzBuzzVC.game?.score = 4
        fizzBuzzVC.play(move: .buzz) // part 6 challenge 7
        let newScore = fizzBuzzVC.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    // challenge 3
    func testFizzBuzzIncrementScore() {
        fizzBuzzVC.game?.score = 14
        fizzBuzzVC.play(move: .fizzBuzz) // part 6 challenge 7
        let newScore = fizzBuzzVC.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    // challenge 4
    func testOnWrongMoveScoreNotIncremented() {
        fizzBuzzVC.play(move: .fizz) // part 6 challenge 7
        let newScore = fizzBuzzVC.gameScore
        XCTAssertEqual(newScore, 0)
    }
}
