//
//  storyBackend.swift
//  Project Destiny
//
//  Created by Emmett Shaughnessy on 8/31/21.
//

import Foundation


struct Story{
    
    let name:        String
    let desc:         String
    let choice1:      String
    let choice1Index: Int
    let choice2:      String
    let choice2Index: Int
    
}

enum StoryError: Error {
    case indexOutOfBounds
}



let mainStory = Story(name: "Main", desc:"""
Welcome to CYOS.

During the game, a story will be displayed here. Read it carefully. After you've read everything, pick a choice.

Your choice will influence the story.

Your choice will influence the ending.

Your choice will either help the main character escape, or it will aid in their demise.

--

Good luck.
""",
                      choice1: "Continue", choice1Index: 1,
                      choice2: "Continue", choice2Index: 1
)



///This array holds all stories possible in this CYOS game.".
let stories:[Story] = [
    
    //Start Page - 0
    mainStory,
    
    //Origin - 1
    Story(name: "Gloomy Forest", desc: """
        You're in a dark and gloomy forest.
        
        Two paths lie ahead of you.
        
        The first path appears to lead to a deeper section of the forest. The second path looks far less traveled, but it appears to lead to a small field in the distance.
        """,
          choice1: "First Path", choice1Index: 2,
          choice2: "Second Path", choice2Index: 3),
    
    
    
    
    
    //Origin First Choice - 2
    Story(name: "Deep Forest", desc: """
You've entered a deeper section of the forest. The moonlight has been reduced to slivers between the dense leaves in the canopy above.

Two paths lie ahead of you.

The dark path appears to lead to a cave up ahead. The light path appears to lead to a small field, possibly the same one you saw earlier.
""",
          choice1: "Dark Path", choice1Index: 4,
          choice2: "Light Path", choice2Index: 6),
    
    
    
    
    
    //Origin Second Choice - 3
    Story(name: "Small Field", desc: """
You've entered a small wheat field. The only problem is the field is surrounded entirely by the forest you're so desperatly trying to escape. You have not escaped. Not yet.

Two paths lie ahead of you.

Either you can clear the field, or you can continue on and keep moving.
""",
          choice1: "Clear it",choice1Index: 5,
          choice2: "Move on", choice2Index: 7),
    
    
    
    
    //Deep Forest First Choice - 4
    Story(name: "Dark Cave", desc: """
You've entered a dark cave in the middle of the Deep Forest.

Two paths lie ahead of you.

On the left you see sprawling vines, and on the right, a large collection of water.
""",
          choice1: "Left Path", choice1Index: 0,
          choice2: "Right Path", choice2Index: 0),
    
    
    
    
    //Small Field First Choice - 5
    Story(name: "Small Field", desc: """
You've cleared the field and see strange markings on the ground.

Two paths lie ahead of you.

You can start digging and see what secerets lie beneath the surface, or you can set up camp for the night.
""",
          choice1: "Begin Digging",choice1Index: 0,
          choice2: "Set up Camp", choice2Index: 0),
    
    
    
    //Deep Forest Second Choice - 6
    Story(name: "Small Field", desc: """
You've entered a small corn field. The field is surrounded entirely by the forest you're so desperatly trying to escape. You have not escaped. Not yet.

Two paths lie ahead of you.

Either set up camp for the night, or reenter the forest.
""",
          choice1: "Set up Camp", choice1Index: 0,
          choice2: "Reenter the Forest", choice2Index: 7),
    
    
    
    //Small Field Second Choice - 7
    Story(name: "Forest", desc: """
You've moved on from the field, only to find yourself back in the forest. Nothing is familiar, and at this point you're definitely lost.

Two paths lie ahead of you.

You can keep moving forward, or you can set up camp for the night.
""",
          choice1: "Keep Moving", choice1Index: 0,
          choice2: "Set up Camp", choice2Index: 0)
    
    
]





