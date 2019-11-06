//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    
    // Check columns
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
    
    // Check rows
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
    
    // Check top left to bottom right diagonal
    numMarks = 0
    for i in 0..<3 {
        if board[(i, i)] == player {
            numMarks += 1
        }
    }
    
    if numMarks == 3 {
        return true
    }
    
    // Check top right to bottem left diagonal
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
