//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by Sirojiddin Kuzmonboev on 18/11/24.
//

import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {

    
    
    @Test("Reset Player Scores", arguments: [0, 10, 20])
    func resetScores(to newValue: Int) async throws {
        var scoreboard = Scoreboard(players: [
            Player(name: "Eliza", score: 0),
            Player(name: "Safi", score: 5),
        ])
        scoreboard.resetScore(to: newValue)
        
        for player in scoreboard.players {
            #expect(player.score == newValue)
        }
    }
    
    @Test("Highest score wins")
    func highestScoreWins() {
        let scoreboard = Scoreboard(players: [
            Player(name: "Eliza", score: 0),
            Player(name: "Safi", score: 4),
        ],
        state: .finished,
        doesHighestScoreWin: true
     )
        
        let winners = scoreboard.winners
        #expect(winners == [Player(name: "Safi", score: 4) ])
        
    }
    @Test("Lowest score wins")
        func lowestScoreWins() {
            let scoreboard = Scoreboard(players: [
                Player(name: "Eliza", score: 0),
                Player(name: "Safi", score: 5),
            ],
            state: .finished,
            doesHighestScoreWin: false
            )
            
            let winners = scoreboard.winners
            #expect(winners == [Player(name: "Eliza", score: 0) ])
    }
    

}
