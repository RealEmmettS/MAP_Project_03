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
   let choice2:      String
    
}

enum StoryError: Error {
    case indexOutOfBounds
}

///This array holds all stories possible in this CYOS game. The first choice links to even numbered rooms, and the second choice links to odd numbered rooms. Another way of putting it is "Evens are choice1; Odds are choice2".
let stories:[Story] = [
    
    //Origin
    Story(name: "Gloomy Forest", desc: """
        You're in a dark and gloomy forest.
        
        Two paths lie ahead of you.
        
        The first path appears to lead to a deeper section of the forest. The second path looks far less traveled, but it appears to lead to a small field in the distance.
        """, choice1: "First Path", choice2: "Second Path"),
    
    //Origin First Choice
    Story(name: "Deep Forest", desc: """
You've entered a deeper section of the forest. The moonlight has been reduced to slivers between the dense leaves in the canopy above.

Two paths lie ahead of you.

The dark path appears to lead to a cave up ahead. The light path appears to lead to a small field, possibly the same one you saw earlier.
""", choice1: "Dark Path", choice2: "Light Path"),
    
    //Origin Second Choice
    Story(name: "Small Field", desc: """
You've entered a small wheat field. The only problem is the field is surrounded entirely by the forest you're so desperatly trying to escape. You have not escaped. Not yet.

Two paths lie ahead of you.

Either you can clear the field, or you can continue on and keep moving.
""", choice1: "Clear it", choice2: "Move on"),
    
    //Deep Forest First Choice
    Story(name: "Dark Cave", desc: """
You've entered a dark cave in the middle of the Deep Forest.

Two paths lie ahead of you.

On the left you see sprawling vines, and on the right, a large collection of water.
""", choice1: "Left Path", choice2: "Right Path"),
    
    //Small Field First Choice
    Story(name: "Small Field", desc: """
You've cleared the field and see strnge markings on the ground.

Two paths lie ahead of you.

You can start digging and see what secerets lie beneath the surface, or you can set up camp for the night.
""", choice1: "Begin Digging", choice2: "Set up Camp"),
    
    //Deep Forest Second Choice
    Story(name: "Small Field", desc: """
You've entered a small corn field. The field is surrounded entirely by the forest you're so desperatly trying to escape. You have not escaped. Not yet.

Two paths lie ahead of you.

Either set up camp for the night, or reenter the forest.
""", choice1: "Set up Camp", choice2: "Reenter the Forest"),
    
    //Small Field Second Choice
    Story(name: "Forest", desc: """
You've moved on from the field, only to find yourself back in the forest. Nothing is familiar, and at this point you're definitely lost.

Two paths lie ahead of you.

You can keep moving forward, or you can set up camp for the night.
""", choice1: "Keep Moving", choice2: "Set up Camp")
    
    
]




let mainStory = Story(name: "Main", desc:"""
Welcome to CYOS.

During the game, a story will be displayed here. Read it carefully. After you've read everything, pick a choice.

Your choice will influence the story.

Your choice will influence the ending.

Your choice will either help the main character escape, or it will aid in its demise.

--

Good luck.
""", choice1: "Continue", choice2: "Continue")
