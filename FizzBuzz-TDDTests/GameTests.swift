//
//  GameTests.swift
//  FizzBuzz-TDD
//
//  Created by Miel on 3/9/2560 BE.
//  Copyright © 2560 Lumos. All rights reserved.
//

import XCTest
@testable import FizzBuzz_TDD

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    // challenge 2
    func testOnPlayScoreIncremented() {
        // challenge 4
        _ = game.play(move: .number) // part 6 challenge 6
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        // challenge 4
        _ = game.play(move: .number) // part 6 challenge 6
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let reponse = game.play(move: .fizz) // part 6 challenge 6
        let result = reponse.right // part 5 challenge 2
        XCTAssertEqual(result, true)
    }
    
    // challenge 6
    func testIfMoveIsWrong() {
        game.score = 1
        let reponse = game.play(move: .fizz) // part 6 challenge 6
        let result = reponse.right // part 5 challenge 2
        XCTAssertEqual(result, false)
    }
    
    // challenge 8
    func testIfBuzzMoveRight() {
        game.score = 4
        let reponse = game.play(move: .buzz) // part 6 challenge 6
        let result = reponse.right // part 5 challenge 2
        XCTAssertEqual(result, true)
    }
    
    // challenge 8
    func testIfBuzzMoveWrong() {
        game.score = 1
        let reponse = game.play(move: .buzz) // part 6 challenge 6
        let result = reponse.right // part 5 challenge 2
        XCTAssertEqual(result, false)
    }
    
    // challenge 8
    func testIfFizzBuzzMoveRight() {
        game.score = 14
        let reponse = game.play(move: .fizzBuzz) // part 6 challenge 6
        let result = reponse.right // part 5 challenge 2
        XCTAssertEqual(result, true)
    }
    
    // challenge 8
    func testIfFizzBuzzMoveWrong() {
        game.score = 1
        let reponse = game.play(move: .fizzBuzz) // part 6 challenge 6
        let result = reponse.right // part 5 challenge 2
        XCTAssertEqual(result, false)
    }
    
    // challenge 8
    func testIfNumberMoveRight() {
        game.score = 1
        let reponse = game.play(move: .number) // part 6 challenge 6
        let result = reponse.right // part 5 challenge 2
        XCTAssertEqual(result, true)
    }
    
    // challenge 8
    func testIfNumberMoveWrong() {
        game.score = 2
        let reponse = game.play(move: .number) // part 6 challenge 6
        let result = reponse.right // part 5 challenge 2
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        _ = game.play(move: .fizz) // part 6 challenge 6
        XCTAssertEqual(game.score, 1)
    }
    
    //MARK - part 5
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: .number) // part 6 challenge 6
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: .number) // part 6 challenge 6
        XCTAssertNotNil(response.score)
    }
}
