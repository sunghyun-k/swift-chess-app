//
//  QueenPiece.swift
//  ChessGame
//
//  Created by Sunghyun Kim on 2022/10/01.
//

import Foundation

struct QueenPiece: ChessPiece {
    let teamColor: TeamColor
    static let score = 9
    var symbol: Character {
        teamColor == .white ? "♕" : "♛"
    }
    
    func isDeltaValid(delta: Delta) -> Bool {
        return RookPiece(teamColor: teamColor).isDeltaValid(delta: delta) ||
        BishopPiece(teamColor: teamColor).isDeltaValid(delta: delta)
    }
}
