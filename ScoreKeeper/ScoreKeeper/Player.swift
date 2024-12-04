//
//  Player.swift
//  ScoreKeeper
//
//  Created by Sirojiddin Kuzmonboev on 07/11/24.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    var name: String
    var score: Int
}

extension Player: Equatable {
    static func == (lhs: Player, rhs: Player) -> Bool {
        lhs.name == rhs.name && lhs.score == rhs.score
    }
}