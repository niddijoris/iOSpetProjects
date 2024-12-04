//
//  Scoreboard.swift
//  ScoreKeeper
//
//  Created by Sirojiddin Kuzmonboev on 13/11/24.
//

class Scoreboard {
    var players: [Player] = [
        Player(name: "Eliza", score: 0),
        Player(name: "Safi", score: 0),
        Player(name: "Sora", score: 0),
    ]
    
    var state = GameState.setup
    var doesHighestScoreWin = true
    
    var winners: [Player] {
        guard state == .finished else { return [] }
        
        var winningScore = 0
        if doesHighestScoreWin {
            winningScore = Int.min
            for player in players {
                winningScore = max(player.score, winningScore)
            }
        } else {
            winningScore = Int.max
            for player in players {
                winningScore = min(player.score, winningScore)
            }
        }
        return players.filter { player in
            player.score == winningScore
        }
    }
    
    func resetScore(to newValue: Int) {
        for index in 0..<players.count {
            players[index].score = newValue
        }
    }
}
