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
    Story(name: "Gloomy Forest", desc: """
        You're in a dark and gloomy forest.
        
        Two paths lie ahead of you.
        
        The first path appears to lead to a deeper section of the forest. The second path looks far less traveled, but it appears to lead to a small field in the distance.
        """, choice1: "First Path", choice2: "Second Path"),
    
    Story(name: "Deep Forest", desc: """
You've entered a deeper section of the forest. The moonlight has been reduced to slivers between the dense leaves in the canopy above.

Two paths lie ahead of you.

The dark path appears to lead to cave up ahead. The light path appears to lead to a small field, possibly the same one you saw earlier.
""", choice1: "Dark Path", choice2: "Light Path"),
    
    Story(name: "Small Field", desc: """
You've entered a small field. The only problem is the field is surrounded entirely by the forest you're so desperatly trying to escape. You have not escaped. Not yet.

Two paths lie ahead of you.

Either you can clear the field, or you can continue on and keep moving.
""", choice1: "Clear it", choice2: "Move on")
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
