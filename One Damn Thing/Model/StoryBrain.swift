//
//  StoryBrain.swift
//  One Damn Thing
//
//  Created by C. Jordan Ball III on 6/24/21.
//

import Foundation

struct StoryBrain {
    let stories = [
        Story(title: "You see a fork in the road.", choice1: "Take the left.", choice2: "Take the right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps."),
        Story(title: "You shouted and scared the tiger. He is angry!", choice1: "Run like hell!", choice2: "Kneel and pray!"),
        Story(title: "You played dead too well, and are covered in vultures.", choice1: "Cry for mercy!", choice2: "Pray."),
        Story(title: "It was a chest of poison!", choice1: "Breathe deeply!", choice2: "Swear!"),
        Story(title: "You should have checked better.  Boobie trap.", choice1: "Get a bra.", choice2: "Jump on it!")
    ]
    
    var currentStory: Int = 0;
    
    mutating func setCurrentStory(_ priorStory: Int, _ direction: Int) {
        currentStory = direction == 0 ? priorStory * 2 + 1 : priorStory * 2 + 2;
    }
    
    func getCurrentStory() -> Int {
        return currentStory;
    }
}
