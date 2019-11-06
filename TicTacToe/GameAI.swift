//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    
    // Check columns 0
    var numMarks = 0
    
    for x in 0..<3 {
        numMarks = 0
        
        for y in 0..<3 {
            if board[(x, y)] == player {
                numMarks += 1
            }
        }
        
        if numMarks == 3 {
            return true
        }
        
    }
    
    for y in 0..<3 {
        numMarks = 0
        
        for x in 0..<3 {
            if board[(x, y)] == player {
                numMarks += 1
            }
        }
        
        if numMarks == 3 {
            return true
        }
        
    }
    
    numMarks = 0
    for i in 0..<3 {
        if board[(i, i)] == player {
            numMarks += 1
        }
    }
    
    if numMarks == 3 {
        return true
    }
    
    numMarks = 0
    for i in 0..<3 {
        if board[(2 - i, i)] == player {
            numMarks += 1
        }
    }
    
    if numMarks == 3 {
        return true
    }
    
    return false
}
