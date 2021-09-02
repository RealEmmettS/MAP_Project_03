//
//  ViewController.swift
//  Project Destiny
//
//  Created by Emmett Shaughnessy on 8/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var roomLabel: UILabel!
    @IBOutlet weak var story: UITextView!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    
    
    //MARK:- Story Functions
    ///Updates the Room Label
    func updateRoom(newRoomName room: String){
        roomLabel.text = "Room: \(room)"
        
        if room.lowercased() == "main" || room.lowercased() == "complete"{
            choice2.setTitle("<-------", for: .disabled)
            choice2.isEnabled = false
        }else{
            choice2.isEnabled = true
        }
        
        if room.lowercased() == "deep forest" || room.lowercased() == "dark cave"{
            if #available(iOS 13.0, *) {
                UIView.transition (with: self.view, duration: 0.3, options: .transitionCrossDissolve, animations: {
                    self.overrideUserInterfaceStyle = .dark //.light or .unspecified
                    }, completion: nil)
            }
        }else{
            if #available(iOS 13.0, *) {
                UIView.transition (with: self.view, duration: 0.3, options: .transitionCrossDissolve, animations: {
                    self.overrideUserInterfaceStyle = .light //.light or .unspecified
                    }, completion: nil)

            }
        }
    }
    
    ///Updates Room Description (large story text)
    func updateRoomDescription(roomDescription desc: String){
        story.text = desc
    }
    
    ///Updates Avaliable Choices
    func updateChoices(firstChoice: String, secondChoice: String){
        choice1.setTitle(firstChoice, for: .normal)
        choice2.setTitle(secondChoice, for: .normal)
    }
    
    ///Changes the Room (consolidates all update functions into one main function)
    func changeRoom(newRoomName room: String, roomDescription desc: String, firstChoice: String, secondChoice: String){
        updateRoom(newRoomName: room)
        updateRoomDescription(roomDescription: desc)
        updateChoices(firstChoice: firstChoice, secondChoice: secondChoice)
    }
    
    ///Restarts Rooms (resets everything back to the main screen)
    func restartRooms(completed: Bool = false){
        currentRoom = 0
        if completed == true{
            changeRoom(newRoomName: "Complete", roomDescription: mainStory.desc, firstChoice: mainStory.choice1, secondChoice: mainStory.choice2)
        }else{
            changeRoom(newRoomName: mainStory.name, roomDescription: mainStory.desc, firstChoice: mainStory.choice1, secondChoice: mainStory.choice2)
        }
        
    }
    
    
    //MARK:- ViewDidLoad()
    var currentRoom:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restartRooms()
        
    }
    
    //MARK: Choice Button Actions
    @IBAction func choice1(_ sender: Any) {
        updateStory(choice: 1)
    }
    
    @IBAction func choice2(_ sender: Any) {
        updateStory(choice: 2)
    }
    
    
    //MARK:- Update Story From Choice
    
    ///Updates the current room/story based on which choice  button the user clicked.
    ///The first choice links to even numbered rooms, and the second choice links to odd numbered rooms
    func updateStory(choice: Int){
        
        print("Current Room Number: \(currentRoom)")
        
        if (roomLabel.text == "Room: Main"){
            currentRoom = 0
            print("\nSkipping switch statement...\n")
        }else{
            print("Running switch statement...")
            switch choice{
            case 1:
                print("Choice 1")
                currentRoom += 1
            case 2:
                print("Choice 2")
                currentRoom += 2
            default:
                print("No choice. This is the default")
            }
        }
        
        if currentRoom <= (stories.count-1) {
            let newStory = stories[currentRoom]
            print("Changing to the \(newStory.name)")
            changeRoom(newRoomName: newStory.name, roomDescription: newStory.desc, firstChoice: newStory.choice1, secondChoice: newStory.choice2)
        }else{
            restartRooms(completed: true)
        }
        
        
        
    }//end update room function
    
    
    
    


}

