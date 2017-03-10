//
//  FizzBuzzVC.swift
//  FizzBuzz-TDD
//
//  Created by Miel on 3/9/2560 BE.
//  Copyright © 2560 Lumos. All rights reserved.
//

import UIKit

class FizzBuzzVC: UIViewController {
    //MARK: - IBOutlet
    @IBOutlet weak var btn_number: UIButton!
    @IBOutlet weak var btn_fizz: UIButton!
    @IBOutlet weak var btn_buzz: UIButton!
    @IBOutlet weak var btn_fizzBuzz: UIButton!

    //MARK: - Properties
    var game: Game?
    var gameScore: Int? {
        didSet {
            guard let score = gameScore else {
                print("gameScore is nil")
                return
            }
            btn_number.setTitle("\(score)", for: .normal)
        }
    }

    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game = Game()
        // challenge 2
        gameScore = game?.score ?? 0
    }
    
    //MARK: - IBAction
    @IBAction func buttonTapped(_ sender: UIButton) {
        // part 6 challenge 8
        /*
        guard var score = gameScore else {
            print("Game score is nil!")
            return
        }
        
        score += 1
        */
        
        switch sender {
        case btn_number:
            play(move: .number)
        case btn_fizz:
            play(move: .fizz)
        case btn_buzz:
            play(move: .buzz)
        case btn_fizzBuzz:
            play(move: .fizzBuzz)
        default:
            print("Invalid selection")
        }
    }
    
    //MARK: - Methods
    // challenge 1
    func play(move: Move) {  // part 6 challenge 8
        guard let game = game else {
            print("Game is nil!")
            return
        }
    
        let response = game.play(move: move)
        gameScore = response.score
    }
}
