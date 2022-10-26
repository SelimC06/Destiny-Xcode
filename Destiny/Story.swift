//
//  Story.swift
//  Destiny
//
//  Created by Coskunuzer, Selim on 9/14/22.
//

import Foundation
struct Story{
    let title: String
    let choice1: String
    let choice1index: Int
    let choice2: String
    let choice2index: Int
    
    init(title: String, choice1: String, choice1index: Int, choice2: String, choice2index: Int){
        self.title = title
        self.choice1 = choice1
        self.choice1index = choice1index
        self.choice2 = choice2
        self.choice2index = choice2index
    }
}

struct Destiny{
    var currentStory : Int = 0
    let stories = [
    //construct Story objects inside the list
    Story(title: "It's 12:01 am, you're walking down the isolated road. Suddenly you notice that a man with a clown face mask is staring at you.",choice1: "Make eye contact", choice1index: 1, choice2: "Start running!", choice2index: 2),
    //Story object at index 0
    Story(title: "He pulls out a knife from his pocket. Slowly waking towards with you.", choice1: "Start Running!", choice1index:0, choice2: "Start walking towards him", choice2index: 1),
    Story(title: "The clown starts running after you. You arrive at an intersection.", choice1: "Turn around and show him whos the boss",choice1index:-1, choice2:"Run towards the light", choice2index:-1),
    Story(title: "He starts swinging his knife towards you.", choice1: "Start charging at him with all your rage",choice1index:-1, choice2:"Have the skills of Bruce Lee", choice2index:-1),
    Story(title: "You're in Heaven", choice1: "the end",choice1index:-1, choice2:"the end", choice2index:-1),
    Story(title: "You beat him up! KO", choice1: "the end",choice1index:-1, choice2:"the end", choice2index:-1)
    //Story object at index 1
    ]
    func returnStory() -> String{
        return stories[currentStory].title
    }
    
    func returnChoice1() ->String{
        return stories[currentStory].choice1
    }
    
    func returnChoice2() ->String{
        return stories[currentStory].choice2
    }
}
