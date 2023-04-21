//
//  MagicBall.swift
//  GuessTheNumber
//
//  Created by Андрей  on 21.04.2023.
//



import Foundation

class MagicBall {
    
    private let answers = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy, try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]
    
    func getAnswer() -> String {
        let randomIndex = Int.random(in: 0..<answers.count)
        
        return answers[randomIndex]
    }
}
